require 'test_helper'

class AboutUsControllerTest < ActionController::TestCase
  test "should get tradition" do
    get :tradition
    assert_response :success
  end

end
