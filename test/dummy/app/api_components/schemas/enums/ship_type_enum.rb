module Schemas
  module Enums
    class ShipTypeEnum
      include Rswag::SchemaComponents::Component

      schema({
        type: :string,
        enum: [:small, :medium, :large]
      })
    end
  end
end
