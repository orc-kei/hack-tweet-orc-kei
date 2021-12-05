require 'test_helper'

class HacksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hacks_index_url
    assert_response :success
  end

end
