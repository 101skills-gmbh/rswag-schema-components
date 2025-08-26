# frozen_string_literal: true

require "active_support"
require "active_support/core_ext/string/inflections"

module Rswag
  module SchemaComponents
    module Component
      extend ActiveSupport::Concern

      included do
        def to_schema
          self.class.schema_value
        end

        def hidden?
          self.class.schema_hidden_value
        end

        def skip_key_transformation?
          self.class.skip_key_transformation_value
        end
      end

      class_methods do
        attr_accessor :schema_value, :schema_hidden_value, :skip_key_transformation_value

        def schema(schema_definition)
          self.schema_value = if superclass.respond_to?(:schema_value)
            parent_schema_definition = superclass.schema_value.deep_dup
            parent_schema_definition.deeper_merge(schema_definition)
          else
            schema_definition
          end
        end

        def schema_hidden(flag = false)
          self.schema_hidden_value = flag
        end

        def skip_key_transformation(flag = false)
          self.skip_key_transformation_value = flag
        end

        def transform_enum_key(key)
          key = ActiveSupport::Inflector.underscore(key.to_s)
          key.parameterize(separator: "_").upcase
        end
      end
    end
  end
end
