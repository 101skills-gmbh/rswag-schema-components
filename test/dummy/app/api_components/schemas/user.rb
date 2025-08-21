module Schemas
  class User
    include Rswag::SchemaComponents::Component

    schema({
      type: :object,
      properties: {
        id: {type: :integer},
        name: {type: :string, nullable: true},
        created_at: {type: :string, format: "date-time"},
        updated_at: {type: :string, format: "date-time"},
        _destroy: {type: :boolean, default: false}
      },
      additionalProperties: false,
      required: %w[id created_at updated_at]
    })
  end
end
