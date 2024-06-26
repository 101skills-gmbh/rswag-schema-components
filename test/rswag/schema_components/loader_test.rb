require "test_helper"

class Rswag::SchemaComponents::LoaderTest < ActiveSupport::TestCase
  test "loads all components" do
    components_loader = Rswag::SchemaComponents::Loader.new

    assert components_loader.schemas["User"].present?

    assert_equal(
      components_loader.schemas["User"],
      {
        :type=>:object,
        :properties=>{
          :id=>{:type=>:integer}
        },
        :additionalProperties=>false,
        :required=>["id"],
        :title=>"User"
      }
    )
  end
end
