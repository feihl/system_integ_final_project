require "test_helper"

class IssuedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get issued_index_url
    assert_response :success
  end
end
