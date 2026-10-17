#!/usr/bin/env ruby
require "json"
require "optparse"
require "pathname"

ROUTES = %w[landing-page blog guest-post press-release audience review prompt humanization].freeze
options = { limit: 5, query: "" }
parser = OptionParser.new do |args|
  args.banner = "Usage: ruby search.rb [--route ROUTE] [--query TEXT] [--limit 1-20]"
  args.on("--route ROUTE", ROUTES) { |value| options[:route] = value }
  args.on("--query TEXT") { |value| options[:query] = value }
  args.on("--limit N", Integer) { |value| options[:limit] = value }
end

begin
  parser.parse!
  raise OptionParser::InvalidArgument, "unexpected arguments" unless ARGV.empty?
  raise OptionParser::InvalidArgument, "provide a route or query" unless options[:route] || !options[:query].strip.empty?
  raise OptionParser::InvalidArgument, "limit must be 1-20" unless (1..20).cover?(options[:limit])
  skill = Pathname.new(__dir__).parent.expand_path
  library = skill.join("references/library")
  catalog = JSON.parse(library.join("catalog.json").read)
  raise "Unsupported knowledge catalog" unless catalog.fetch("schema_version") == 1
  guidance = JSON.parse(skill.join("references/guidance.json").read).fetch("entries").each_with_object({}) { |entry, result| result[entry.fetch("topic_id")] = entry }
  terms = options[:query].downcase.split(/[\s,，;；]+/).reject(&:empty?).uniq
  results = catalog.fetch("posts").each_with_object([]) do |post, matches|
    filename = post.fetch("file")
    path = library.join(filename).cleanpath
    raise "Unsafe catalog path" unless path.to_s.start_with?(library.to_s + "/") && File.basename(filename) == filename
    raise "Bundled post missing: #{filename}" unless path.file?
    guide = guidance[post.fetch("topic_id")]
    route_match = guide && guide.fetch("routes").include?(options[:route])
    title = post.fetch("title").downcase
    labels = (post.fetch("tags") + [post.fetch("topic_id")] + (guide ? guide.fetch("keywords") : [])).join(" ").downcase
    first, last = post.fetch("star_lines")
    body = path.read.lines[(first - 1)...last].join.downcase
    matched = terms.select { |term| title.include?(term) || labels.include?(term) || body.include?(term) }
    next unless route_match || !matched.empty?
    score = matched.sum { |term| (title.include?(term) ? 30 : 0) + (labels.include?(term) ? 15 : 0) + (body.include?(term) ? 3 : 0) }
    score += 5 if route_match
    matches << {
      "topic_id" => post.fetch("topic_id"), "title" => post.fetch("title"),
      "post_date" => post.fetch("post_date"), "path" => path.to_s,
      "star_lines" => post.fetch("star_lines"), "original_lines" => post.fetch("original_lines"),
      "media_lines" => post.fetch("media_lines"),
      "sources" => post.fetch("sources"),
      "source_type" => guide ? guide.fetch("source_type") : "unclassified archive material",
      "match_type" => matched.empty? ? "route-guidance" : "query",
      "query_matches" => matched, "score" => score,
      "guidance_order" => guide ? guide.fetch("order") : 999
    }
  end
  results.sort_by! { |item| [-item["score"], item["guidance_order"], item["topic_id"]] }
  selected = results.first(options[:limit]).map { |item| item.reject { |key, _| key == "guidance_order" } }
  puts JSON.pretty_generate({
    "status" => selected.empty? ? "no relevant match" : "references found",
    "route" => options[:route], "query" => options[:query],
    "topic_matches" => results.count { |item| item["match_type"] == "query" },
    "snapshot_exported_at" => catalog.fetch("source_exported_at"),
    "note" => "Discovery only: read returned star/original passages before applying guidance or verifying claims. Route guidance is not evidence about the requested product/topic.",
    "matches" => selected
  })
rescue OptionParser::ParseError => error
  warn "#{error.message}\n#{parser}"
  exit 2
rescue KeyError, JSON::ParserError, SystemCallError, RuntimeError => error
  puts JSON.pretty_generate({ "status" => "unavailable", "reason" => error.message, "matches" => [] })
  exit 1
end
