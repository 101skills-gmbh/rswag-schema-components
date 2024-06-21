# frozen_string_literal: true

module Rswag
  module SchemaComponents
    class Engine < ::Rails::Engine
      engine_name Rswag::SchemaComponents
      isolate_namespace Rswag::SchemaComponents
      config.autoload_paths << File.join(config.root, "lib")
    end
  end
end
