require 'test_helper'

class BuyControllerTest < ActionController::TestCase
  test "should get buyitems" do
    get :buyitems
    assert_response :success
  end

end
