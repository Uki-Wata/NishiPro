require 'test_helper'

class IndexIncControllerTest < ActionDispatch::IntegrationTest
  test "should get incidents" do
    get index_inc_incidents_url
    assert_response :success
  end

  test "should get new" do
    get index_inc_new_url
    assert_response :success
  end

end
