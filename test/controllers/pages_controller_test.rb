require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get aboutus" do
    get pages_aboutus_url
    assert_response :success
  end

  test "should get actes" do
    get pages_actes_url
    assert_response :success
  end

end
