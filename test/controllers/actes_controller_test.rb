require 'test_helper'

class ActesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actes_index_url
    assert_response :success
  end

end
