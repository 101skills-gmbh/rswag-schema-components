require "rswag/schema_components/version"
require "rswag/schema_components/railtie"

module Rswag
  module SchemaComponents
    mattr_accessor :components_base_path
    @@components_base_path = "app/api_components"

    def self.setup
      yield self
    end
  end
end
