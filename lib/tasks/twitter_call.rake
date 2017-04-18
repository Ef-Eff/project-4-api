desc "TOP KEK TOP DECKED"
task twitter_call: :environment do
  puts 'Making http request through HTTParty...'

  trends = HTTParty.get('https://api.twitter.com/1.1/trends/place.json?id=1', {
    headers: {
      'Content-Type' => 'application/json',
      'Authorization' => ENV["TWITTER_AUTHORIZATION"]
    }
  })[0]["trends"]

  puts 'Request done!'

  topics = []
  trends.slice!(5, trends.length)
  trends.each do |trend|
    topics << Topic.create!(title: trend["name"], tweet_volume: trend["tweet_volume"])
  end

  puts "#{topics.length} topics created!"
end
