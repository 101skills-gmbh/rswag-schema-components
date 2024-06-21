# Rswag::SchemaComponents
Short description and motivation.

## Usage
How to use my plugin.

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

To use a different components folder just add an initializer called "rswag_schema_components.rb" and paste in the following to add your custom global classes:

```
# encoding: utf-8

Rswag::SchemaComponents.setup do |config|
  config.components_base_path = "api/components"
end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
