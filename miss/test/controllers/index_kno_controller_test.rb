require 'test_helper'

class IndexKnoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get index_kno_index_url
    assert_response :success
  end

  test "should get result" do
    get index_kno_result_url
    assert_response :success
  end

end
