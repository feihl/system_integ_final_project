require "test_helper"

class IssueBookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get issue_book_index_url
    assert_response :success
  end
end
