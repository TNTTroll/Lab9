require "test_helper"

class NewtonControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get newton_page_url
    assert_response :success
  end
end
