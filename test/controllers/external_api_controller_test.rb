require "test_helper"

class ExternalApiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get external_api_index_url
    assert_response :success
  end
end
