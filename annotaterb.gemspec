Gem::Specification.new do |spec|
  spec.name = "annotaterb"
  spec.version = File.read("VERSION").strip
  spec.authors = ["Andrew W. Lee"]
  spec.email = ["git@drewlee.com"]

  spec.summary = <<~SUMMARY.strip
    A gem for generating annotations for Rails projects.
  SUMMARY
  spec.description = <<~DESCRIPTION.strip
    Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.
  DESCRIPTION
  spec.homepage = "https://github.com/drwl/annotaterb"
  spec.license = "BSD-2-Clause"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/drwl/annotaterb"
  spec.metadata["changelog_uri"] = "https://github.com/drwl/annotaterb/blob/main/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/drwl/annotaterb/issues"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir["VERSION", "CHANGELOG.md", "LICENSE.txt", "README.md", "lib/**/*"]
  spec.bindir = "exe"
  spec.executables = Dir["exe/*"].map { |exe| File.basename(exe) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 6.0.0"
  spec.add_dependency "activesupport", ">= 6.0.0"
end
