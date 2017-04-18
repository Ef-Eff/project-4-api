desc "TOP KEK TOP DECKED"
task twitter_call: :environment do
  puts 'Making request to Twatter through HTTParty...'

  trends = HTTParty.get('https://api.twitter.com/1.1/trends/place.json?id=23424977', {
    headers: {
      'Content-Type' => 'application/json',
      'Authorization' => ENV["TWITTER_AUTHORIZATION"]
    }
  })[0]["trends"]

  puts 'Request done!'

  topics = []
  trends.select! {|hash| hash["tweet_volume"] }.sort_by! {|hash| hash["tweet_volume"]}.reverse!
  trends = trends.slice!(0..4)
  trends.each do |trend|
    topics << Topic.create!(title: trend["name"], tweet_volume: trend["tweet_volume"])
  end

  puts "#{topics.length} topics created!"
end
