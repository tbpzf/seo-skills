---
name: harper-grammar
description: Check English Markdown, documentation, SEO copy, and prose with the local Harper CLI for spelling and grammar findings. Use when the user asks to grammar-check, proofread, spell-check, or lint English text, or as the optional final grammar stage of seo-content-workflow after humanization and stop-slop review.
---

# Harper Grammar Check

Use the local `harper-cli` to find grammar and spelling issues in English prose.
Treat its output as evidence for a constrained review, not an instruction to
rewrite every flagged phrase or a guarantee that the text is error-free.

## Parent workflow contract

When called by [seo-content-workflow](../seo-content-workflow/SKILL.md), run
after the Humalizer and remote Blader Humanizer and Stop Slop passes against the
saved `content.md`. Preserve the SEO contract and return the checked content and
a concise result to the parent for its final audit. Do not add a standalone
response wrapper to `content.md`.
Report the actual preflight path, command status, JSON-parse result, finding
count, correction count, and any skip/failure reason to the parent so it can
emit its required runtime trace. Do not include raw CLI output in that report.

## Install Harper CLI before a content task

Harper is an optional local dependency. Install it before starting a content
task; this skill and `seo-content-workflow` must never install or update it
while processing a draft.

| Platform | Install command |
| --- | --- |
| macOS or Linux with Homebrew | `brew install harper` |
| Windows with Scoop | `scoop install harper` |
| Arch Linux | `sudo pacman -S harper` |
| Nix/NixOS | `nix shell 'nixpkgs#harper'` |
| Termux | `apt install harper` |

Portable binaries are also available from the [Harper GitHub releases](https://github.com/Automattic/harper/releases).
Use the [official Harper installation guide](https://writewithharper.com/docs/integrations/language-server)
to find current package instructions for a platform not listed above.

Verify that the package provided the required CLI interface:

```bash
harper-cli --version
harper-cli lint --help
```

The second command must show `--format`, because this skill requires structured
JSON output. Make sure the directory that contains `harper-cli` is on `PATH`.

## Preflight

1. Resolve `harper-cli` to an absolute executable path and confirm its
   `lint --help` exposes `--format`. Do not execute a binary resolved inside
   the current project or its workspace; report a skipped check instead.
2. Check English text only. Harper does not validate non-English copy.
3. Do not install, update, or configure Harper during a content task. If the
   executable or its JSON output is unavailable, report a skipped check.
4. If the project already has `harper-dictionary.txt`, pass it with
   `--user-dict-path`. Do not create or edit that dictionary implicitly.

## Run the check

Run one file at a time and request structured output:

```bash
"$harper_cli" lint --format json --quiet --dialect us -- "$content_file"
```

When a project dictionary exists:

```bash
"$harper_cli" lint --format json --quiet --dialect us \
  --user-dict-path="$dictionary_file" -- "$content_file"
```

Use an argument-array-capable executor where available; otherwise quote every
path as shown and do not interpolate it into shell source. Capture stdout as
the JSON report. A status of `1` means Harper found lints; inspect the report
instead of treating that status as an execution failure. A different nonzero
status, malformed JSON, or missing `lint`/`--format` support means the check is
unavailable.

## Review and revise

1. Inspect each finding with its line, matched text, rule, and suggestion.
2. Apply only high-confidence corrections that preserve meaning: clear typos,
   duplicated adjacent words, incorrect articles, or an unambiguous grammar
   error with a fitting suggestion.
3. Never automatically change product or company names, acronyms, URLs, link
   destinations, code fences, inline code, quoted legal text, verified claims,
   required keywords, metadata, headings, citations, or CTA labels.
4. Keep ambiguous style suggestions and possible domain terms as findings for
   review. Prefer an existing project dictionary for approved proper nouns.
5. Re-run Harper after edits. Do not chase a zero-lint result when the remaining
   findings are intentional, ambiguous, or protected.

## Deliverable

For a standalone request, return:

```markdown
## Harper grammar check
- Status: passed / findings reviewed / skipped
- Corrections applied:
- Findings retained and why:

## Revised text
[text]
```

For the parent workflow, update its final audit with the status, number of
corrections, and only the material unresolved findings.
