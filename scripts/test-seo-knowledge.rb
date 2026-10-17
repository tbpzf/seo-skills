#!/usr/bin/env ruby
# Regression: a consumer following returned ranges must reach image-only content.
require "json"
require "open3"
require "pathname"
require "rbconfig"

root = Pathname.new(__dir__).parent.expand_path
search = root.join("seo-knowledge/scripts/search.rb")
stdout, stderr, status = Open3.capture3(RbConfig.ruby, search.to_s, "--query", "22811428221581511", "--limit", "1")
abort "Knowledge lookup failed: #{stderr}" unless status.success?
match = JSON.parse(stdout).fetch("matches").first
abort "Image-only resource is missing" unless match && match.fetch("topic_id") == "22811428221581511"
range = match["media_lines"]
abort "Image-only post has no media reading range" unless range && range.length == 2
post = Pathname.new(match.fetch("path"))
media = post.readlines[(range[0] - 1)...range[1]].join
images = media.scan(/!\[[^\]]*\]\(<(附件\/[^>]+)>\)/).flatten
abort "Returned ranges omit the image-only post's actual content" if images.empty?
images.each do |relative|
  image = post.dirname.join(relative).cleanpath
  abort "Returned media is not available offline: #{relative}" unless image.file? && image.binread.start_with?("\x89PNG".b, "\xFF\xD8\xFF".b, "GIF8".b, "RIFF".b)
end
puts "Knowledge behavior passed: returned media range exposes #{images.length} offline image for the image-only post."
