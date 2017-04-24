class TweetsController < ApplicationController
  skip_before_action :authenticate_user!
  def tweets
    tweets = HTTParty.get("https://api.twitter.com/1.1/search/tweets.json?q=#{tweet_params[:trend_title]}&result_type=recent", {
      headers: {
        'Content-Type' => 'application/json',
        'Authorization' => ENV["TWITTER_AUTHORIZATION"]
      }
    })


    render json: tweets
  end

  def tweet_params
    params.permit(:trend_title)
  end
end
