class TweetsController < ApplicationController
  
  def index
    since_id = Tweet.order("id_str DESC").first(select: :id_str).id_str.to_i
    tweets = Twitter.search(APP_CONFIG["twitter"]["query"], :since_id => since_id)
    tweets.results.each do |tweet|
      Tweet.create tweet.attrs
    end
    Rails.logger.debug "\n#{tweets.results.count} tuits nuevos desde #{since_id}"
    @tweets = Tweet.order("id DESC").limit(20).includes(:user)
  end
  
end