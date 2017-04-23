class TweetsController < ApplicationController
  skip_before_action :authenticate_user!
  def tweets
    tweets = HTTParty.get("https://api.twitter.com/1.1/search/tweets.json?q=#{tweet_params}&result_type=popular", {
      headers: {
        'Content-Type' => 'application/json',
        'Authorization' => ENV["TWITTER_AUTHORIZATION"]
      }
    })

    bob = tweets["statuses"].map {|element| element["text"] }

    render json: bob
  end

  def tweet_params
    params.permit(:trend_title)
  end
end
