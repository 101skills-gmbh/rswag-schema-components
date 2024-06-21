require_relative "lib/rswag/schema_utils/version"

Gem::Specification.new do |spec|
  spec.name        = "rswag-schema_utils"
  spec.version     = Rswag::SchemaUtils::VERSION
  spec.authors     = ["Marten Klitzke"]
  spec.email       = ["marten@klitzke.xyz"]
  spec.homepage    = "https://github.com/101skills-gmbh/rswag-schema-utils"
  spec.summary     = "Schema Utils for Rswag."
  spec.description = "Schema Utils for Rswag."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/101skills-gmbh/rswag-schema-utils"
  spec.metadata["changelog_uri"] = "https://github.com/101skills-gmbh/rswag-schema-utils/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.4"
end
