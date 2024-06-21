# Rswag::SchemaComponents

As an addition to the rswag gem, this gem allows you to define reusable components for your swagger schema. This allows you to define schema components as ruby classes once and reuse and inherit it in multiple places in your schema.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "rswag-schema_components"
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install rswag-schema_components
```

### Configuration

To use a different components folder just add an initializer called "rswag_schema_components.rb" and paste in the following to add your custom global classes:

```ruby
# encoding: utf-8

Rswag::SchemaComponents.setup do |config|
  config.components_base_path = "api/components"
end
```

## Usage

### Define a component

Create a new class in the `components_base_path` (defaults to `app/api_components`) and include the `Rswag::SchemaComponents::Component` module.

A basic example of a component:

```ruby
class ExampleComponent
  include Rswag::SchemaComponents::Component

  schema({
    type: :object,
    properties: {
      id: {type: :string, format: :uuid},
      name: {type: :string},
      description: {type: :string},
      createdAt: {type: :string, format: "date-time"},
      updatedAt: {type: :string, format: "date-time"}
    },
    additionalProperties: false,
    required: %w[
      id name createdAt updatedAt
    ]
  })
end
```

### Use all Components in your rswag schema

Inside your `swagger_helper.rb` file:

```ruby
...
RSpec.configure do |config|
  components_loader = Rswag::SchemaComponents::Loader.new

  servers = [
    {
      url: "http://localhost:3000",
      description: "Dev Server"
    },
  ]

  config.openapi_specs = {
    "schema.yaml" => {
      openapi: "3.0.1",
      info: {
        title: "Example API",
        version: "v1",
      },
      servers:,
      components: {
        schemas: components_loader.schemas,
        ...
      }.compact
      ...
    },
  }
end
```

Since the `Rswag::SchemaComponents::Loader` returns a simple Ruby hash you can just merge it into another schema. With this you are able to create a shared schema which includes all shared components.

```ruby
...
RSpec.configure do |config|
  public_components = Rswag::SchemaComponents::Loader.new("public")
  admin_components = Rswag::SchemaComponents::Loader.new("admin")
  shared_components = Rswag::SchemaComponents::Loader.new("shared")

  config.openapi_specs = {
    "public-schema.yaml" => {
      openapi: "3.0.1",
      info: {
        title: "Example Public API",
        version: "v1",
      },
      servers:,
      components: {
        schemas: shared_components.schemas.merge(public_components.schemas)
        ...
      }.compact
      ...
    },
    "admin-schema.yaml" => {
      openapi: "3.0.1",
      info: {
        title: "Example Admin API",
        version: "v1",
      },
      servers:,
      components: {
        schemas: shared_components.schemas.merge(admin_components.schemas)
        ...
      }.compact
      ...
    }
  }
end
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
