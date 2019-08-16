require 'test_helper'

class AboutusControllerTest < ActionDispatch::IntegrationTest
  test "should get actes" do
    get aboutus_actes_url
    assert_response :success
  end

end
