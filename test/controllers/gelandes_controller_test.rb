require 'test_helper'

class GelandesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gelandes_new_url
    assert_response :success
  end

end
