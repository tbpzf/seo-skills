---
name: harper-grammar
description: Check English Markdown, documentation, SEO copy, and prose with the local Harper CLI for spelling and grammar findings. Use when asked to grammar-check or proofread English text, or as the optional final grammar stage of seo-landing-page, seo-blog, or seo-guest-post after humanization and Stop Slop review.
---

# Harper Grammar Check

Use the local `harper-cli` to find grammar and spelling issues in English prose.
Treat its output as evidence for a constrained review, not an instruction to
rewrite every flagged phrase or a guarantee that the text is error-free.

## Parent workflow contract

When called by [seo-landing-page](../seo-landing-page/SKILL.md),
[seo-blog](../seo-blog/SKILL.md), or
[seo-guest-post](../seo-guest-post/SKILL.md), run after Humalizer's single
remote Blader rewrite and the Stop Slop pass. For an owned-site parent, check
saved `content.md` and return the checked body and result for
`workflow-status.md`. For the guest-post parent, check the in-memory article
through standard input and return checked copy and findings for its submission
notes; no saved guest artifact is required. Preserve the parent's factual and
editorial contract. Keep review notes outside publishable copy.
Report the actual preflight path, dialect choice or spelling-preservation mode,
command status, JSON-parse result, finding
count, correction count, and any skip/failure reason to the parent so it can
emit a runtime trace where required or document the guest-post check in
submission notes. Do not include raw CLI output in that report.

## Install Harper CLI before a content task

Harper is an optional local dependency. Install it before starting a content
task; this skill and its parent SEO workflow must never install or update it
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
5. Use the supplied English variety or the parent's brand/host style. Inspect
   the installed `lint --help` for dialect support and accepted values before
   choosing an argument; do not assume a code from the market name. If the
   requested variety is unsupported, record that limitation and retain
   dialect-sensitive findings. When no variety is specified, preserve the
   draft's existing spelling rather than silently standardizing it to US
   English. Record whether a supported dialect was selected or CLI defaults
   were used with spelling preserved.

## Run the check

Run one file at a time and request structured output:

```bash
harper_dialect_args=()
# When help confirms the requested value, set:
# harper_dialect_args=(--dialect "$confirmed_dialect")
"$harper_cli" lint --format json --quiet "${harper_dialect_args[@]}" -- "$content_file"
```

When a project dictionary exists:

```bash
"$harper_cli" lint --format json --quiet "${harper_dialect_args[@]}" \
  --user-dict-path="$dictionary_file" -- "$content_file"
```

For an unsaved guest article, pass only the article Markdown through standard
input with no input-file argument. Do not include submission notes:

```bash
"$harper_cli" lint --format json --quiet "${harper_dialect_args[@]}"
```

Pass an existing project dictionary with `--user-dict-path` when applicable.
Use an argument array for the optional dialect flag; leave it empty when the
preflight selected spelling preservation rather than an explicit CLI dialect.

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
   review. Retain regional-spelling findings when the variety is unspecified or
   unsupported. Prefer an existing project dictionary for approved proper nouns.
5. Re-run Harper after edits. Do not chase a zero-lint result when the remaining
   findings are intentional, ambiguous, or protected.

## Deliverable

For a standalone request, return:

```markdown
## Harper grammar check
- Status: passed / findings reviewed / skipped
- Dialect: requested variety and supported CLI choice, or existing spelling preserved
- Corrections applied:
- Findings retained and why:

## Revised text
[text]
```

For a parent workflow, return the status, actual dialect choice or limitation,
number of corrections, and material
unresolved findings. Owned-site parents save them in `workflow-status.md`;
the guest-post parent records them in submission notes.
