require 'test_helper'

class SendsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
