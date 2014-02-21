class TweetsController < ApplicationController
  def index
    @tweets = Tweet.not_hidden.includes(:user).no_retweets.page(params[:page]).per(20)
    @hidden_tweets_ids = Tweet.hidden.limit(50).ids
  end

  def refresh
    tweets = Twitter.search APP_CONFIG["twitter"]["query"], since_id: Tweet.since_id
    tweets.results.each do |tweet|
      Tweet.find_or_initialize_by_id_str(tweet.attrs[:id_str]).tap do |t|
        t.update_attributes! tweet.attrs
      end
    end
  rescue
  ensure
    render text: ":+1:"
  end
end
