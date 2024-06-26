require_relative "lib/rswag/schema_components/version"

Gem::Specification.new do |spec|
  spec.name        = "rswag-schema_components"
  spec.version     = Rswag::SchemaComponents::VERSION
  spec.authors     = ["Marten Klitzke"]
  spec.email       = ["marten@fobizz.com"]
  spec.homepage    = "https://github.com/101skills-gmbh/rswag-schema-components"
  spec.summary     = "Schema Components for Rswag."
  spec.description = "Schema Components for Rswag."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/101skills-gmbh/rswag-schema-components"
  spec.metadata["changelog_uri"] = "https://github.com/101skills-gmbh/rswag-schema-components/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.4"
end
