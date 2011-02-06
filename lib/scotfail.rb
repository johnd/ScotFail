require 'twitter'
require 'json'

class Scotfail
  
  def initialize
    if search.count > 0
      true
    else
      false
    end
  end
  
  def retweet
    authenticate
    tweets.each do |tweet|
      tweet_text = "RT @#{tweet.from_user}: #{tweet.text}".slice(0,139)
      Twitter.update tweet_text
    end
  end
  
  def last_read_id
    if File.exists?(CONFIG[:LAST_ID_FILE])
      File.new(CONFIG[:LAST_ID_FILE], 'r').gets
    else
      1
    end
  end
  
  def last_read_id=(id)
    output = File.new(CONFIG[:LAST_ID_FILE], 'w')
    output.write id
    output.close
  end
  
  def tweets
    @tweets || []
  end
  
  private
  
  def authenticate
    Twitter.configure do |config|
      config.consumer_key = CONFIG[:CONSUMER_KEY] 
      config.consumer_secret = CONFIG[:CONSUMER_SECRET]
      config.oauth_token = CONFIG[:ACCESS_TOKEN]
      config.oauth_token_secret = CONFIG[:ACCESS_SECRET]
    end
  end
  
  def search
    twitter = Twitter::Search.new
    twitter.not_from 'scotfail'   # Don't repeat yourself.
    twitter.no_retweets           # Can create loops when people
                                  # retweet the bot. This stops it.
    twitter.since_id last_read_id # Don't repeat yourself.
    twitter.since_date Date.today.strftime("%Y-%m-%d")
                                  # Don't care about yesterday.
    twitter.hashtag 'scotfail'    # All we do care about!
    
    if CONFIG[:BANNED]            # Use this config option to
                                  # list people you don't want the
                                  # bot to retweet.
      CONFIG[:BANNED].each do |banned|
        twitter.not_from banned
      end
    end
    
    last_read_id = twitter.fetch.to_a.first.id_str unless twitter.count == 0
    
    @tweets = twitter.to_a.reverse
  end
  
end