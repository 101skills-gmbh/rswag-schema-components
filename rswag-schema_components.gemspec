require_relative "lib/rswag/schema_components/version"

Gem::Specification.new do |spec|
  spec.name = "rswag-schema_components"
  spec.version = Rswag::SchemaComponents::VERSION
  spec.authors = ["Marten Klitzke"]
  spec.email = ["marten@fobizz.com"]
  spec.homepage = "https://github.com/101skills-gmbh/rswag-schema-components"
  spec.summary = "Schema Components for Rswag."
  spec.description = "Schema Components for the rswag gem to define reusable schema components."
  spec.license = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/101skills-gmbh/rswag-schema-components/blob/main/CHANGELOG.md"
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.0.0", "< 8.1.0"

  spec.required_ruby_version = ">= 2.7.0"
end
