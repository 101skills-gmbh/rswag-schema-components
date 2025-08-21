require "test_helper"

class Rswag::SchemaComponents::LoaderTest < ActiveSupport::TestCase
  test "loads all components" do
    components_loader = Rswag::SchemaComponents::Loader.new

    assert components_loader.schemas["User"].present?

    assert_equal(
      components_loader.schemas["User"],
      {
        type: :object,
        properties: {
          id: {type: :integer},
          name: {type: :string, nullable: true},
          createdAt: {type: :string, format: "date-time"},
          updatedAt: {type: :string, format: "date-time"},
          _destroy: {type: :boolean, default: false}
        },
        additionalProperties: false,
        required: ["id", "createdAt", "updatedAt"],
        title: "User"
      }
    )
  end
end
