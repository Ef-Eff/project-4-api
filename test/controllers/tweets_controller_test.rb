require 'test_helper'

class TweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get tweets" do
    get tweets_tweets_url
    assert_response :success
  end

end
