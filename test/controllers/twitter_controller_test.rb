require 'test_helper'

class TwitterControllerTest < ActionDispatch::IntegrationTest
  test "should get trending" do
    get twitter_trending_url
    assert_response :success
  end

end
