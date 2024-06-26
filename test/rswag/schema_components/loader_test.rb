require "test_helper"

class Rswag::SchemaComponents::LoaderTest < ActiveSupport::TestCase
  test "loads all components" do
    components_loader = Rswag::SchemaComponents::Loader.new

    assert components_loader.schemas.size == 1
  end
end
