#!/usr/bin/env ruby
# Build the installed snapshot from the canonical export; runtime needs no repo path.
require "digest"
require "fileutils"
require "json"
require "pathname"
require "yaml"

root = Pathname.new(__dir__).parent.expand_path
source = root.join("知识星球/SEO日报")
bundle = root.join("seo-knowledge/references/library")
check = ARGV.delete("--check")
abort "Usage: ruby scripts/build-seo-knowledge.rb [--check]" unless ARGV.empty?

begin
  manifest_path = source.join("导出清单.json")
  manifest = JSON.parse(manifest_path.read)
  assets = JSON.parse(source.join("_data/assets.json").read)
  managed = {}
  posts = manifest.fetch("posts").map do |post|
    filename = post.fetch("file")
    raise "Invalid post filename: #{filename}" unless File.basename(filename) == filename && filename.end_with?(".md")
    path = source.join(filename)
    text = path.read
    digest = Digest::SHA256.hexdigest(text)
    raise "Post differs from export manifest: #{filename}" unless digest == post.fetch("sha256")
    frontmatter = text.match(/\A---\n(.*?)\n---\n/m)
    raise "Missing post metadata: #{filename}" unless frontmatter
    metadata = YAML.safe_load(frontmatter[1])
    raise "Topic ID mismatch: #{filename}" unless metadata.fetch("topic_id").to_s == post.fetch("topic_id").to_s
    lines = text.lines
    body_start = lines.index { |line| line.strip == "## 星球正文" }
    original_start = lines.index { |line| line.strip == "## 外部原文" }
    raise "Missing post/original boundaries: #{filename}" unless body_start && original_start && body_start < original_start
    body_end = ((body_start + 1)...original_start).find { |index| ["## 帖子配图", "## 帖子附件"].include?(lines[index].strip) } || original_start
    managed[filename] = digest
    {
      "topic_id" => post.fetch("topic_id").to_s,
      "title" => post.fetch("title"),
      "post_date" => post.fetch("created_at"),
      "file" => filename,
      "tags" => metadata.fetch("tags", []),
      "star_lines" => [body_start + 1, body_end],
      "media_lines" => body_end < original_start ? [body_end + 1, original_start] : nil,
      "original_lines" => [original_start + 1, lines.length],
      "sources" => post.fetch("sources").map { |item| item.select { |key, _| %w[url status reason].include?(key) } }
    }
  end
  raise "Topic count/IDs do not agree" unless posts.length == manifest.fetch("topics") && posts.map { |post| post["topic_id"] }.uniq.length == posts.length
  assets.each do |asset|
    next unless asset["status"] == "saved"
    relative = asset.fetch("path")
    path = source.join(relative).cleanpath
    raise "Unsafe image path: #{relative}" unless relative.start_with?("附件/") && path.to_s.start_with?(source.to_s + "/")
    digest = Digest::SHA256.file(path).hexdigest
    raise "Image differs from export manifest: #{relative}" unless digest == asset.fetch("sha256")
    managed[relative] = digest
  end
  catalog = {
    "schema_version" => 1,
    "source_manifest_sha256" => Digest::SHA256.file(manifest_path).hexdigest,
    "source_exported_at" => manifest.fetch("exported_at"),
    "posts" => posts,
    "attachments" => manifest.fetch("attachments"),
    "managed_files" => managed.sort.to_h
  }
  catalog_path = bundle.join("catalog.json")
  if check
    raise "Missing bundled catalog" unless catalog_path.file?
    raise "Bundled catalog is stale; rebuild it" unless JSON.parse(catalog_path.read) == catalog
    managed.each do |relative, digest|
      path = bundle.join(relative)
      raise "Missing or stale bundled file: #{relative}" unless path.file? && Digest::SHA256.file(path).hexdigest == digest
    end
    puts "Knowledge bundle verified: #{posts.length} posts, #{managed.length - posts.length} images; source hashes match."
  else
    previous = catalog_path.file? ? JSON.parse(catalog_path.read).fetch("managed_files") : {}
    FileUtils.mkdir_p(bundle)
    managed.each do |relative, digest|
      destination = bundle.join(relative)
      next if destination.file? && Digest::SHA256.file(destination).hexdigest == digest
      FileUtils.mkdir_p(destination.dirname)
      FileUtils.cp(source.join(relative), destination)
    end
    (previous.keys - managed.keys).each do |relative|
      obsolete = bundle.join(relative).cleanpath
      raise "Unsafe obsolete bundle path" unless obsolete.to_s.start_with?(bundle.to_s + "/")
      obsolete.delete if obsolete.file?
    end
    catalog_path.write(JSON.pretty_generate(catalog) + "\n")
    puts "Knowledge bundle built: #{posts.length} posts, #{managed.length - posts.length} images; #{manifest.fetch('unique_originals')} external source records retained in catalog."
  end
rescue KeyError, JSON::ParserError, Psych::Exception, SystemCallError, RuntimeError => error
  warn "Knowledge bundle error: #{error.message}"
  exit 1
end
