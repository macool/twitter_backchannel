class TweetsController < ApplicationController
  
  def index
    since_id = if Tweet.count > 0
      Tweet.order("id_str DESC").first(select: :id_str).id_str.to_i
    else
      1
    end
    tweets = Twitter.search(APP_CONFIG["twitter"]["query"], :since_id => since_id)
    tweets.results.each do |tweet|
      Tweet.create tweet.attrs
    end
    Rails.logger.debug "\n#{tweets.results.count} tuits nuevos desde #{since_id}"
    respond_to do |format|
      format.html do
        @tweets = Tweet.order("id DESC").limit(20).includes(:user)
      end
      format.js do
        @tweets = []
        tweets.results.each do |tweet|
          @tweets << Tweet.find_by_id_str(tweet.attrs[:id_str])
        end
        @tweets.reverse!
      end
    end
  end
  
end