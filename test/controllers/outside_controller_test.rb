require 'test_helper'

class OutsideControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outside_index_url
    assert_response :success
  end

end
