module Schemas
  class User
    include Rswag::SchemaComponents::Component

    schema({
      type: :object,
      properties: {
        id: {type: :integer}
      },
      additionalProperties: false,
      required: %w[id]
    })
  end
end
