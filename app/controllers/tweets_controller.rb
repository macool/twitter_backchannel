class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order("id DESC").limit(20).includes(:user).reverse
  end

  def refresh
    since_id = if Tweet.count > 0
      Tweet.order("id_str DESC").first(select: :id_str).id_str.to_i
    else
      1
    end
    tweets = Twitter.search(APP_CONFIG["twitter"]["query"], :since_id => since_id)
    tweets.results.each do |tweet|
      Tweet.create tweet.attrs
    end
    render text: ""
  end

end