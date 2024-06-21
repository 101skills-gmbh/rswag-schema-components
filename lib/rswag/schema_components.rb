require "rswag/schema_components/version"
require "rswag/schema_components/railtie"
require "rswag/schema_components/loader"
require "rswag/schema_components/component"

module Rswag
  module SchemaComponents
    mattr_accessor :components_base_path
    @@components_base_path = "app/api_components"

    def self.setup
      yield self
    end
  end
end
