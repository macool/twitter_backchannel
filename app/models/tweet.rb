class Tweet < ActiveRecord::Base
  attr_accessor :in_reply_to_status_id,
                :in_reply_to_user_id

  serialize :metadata
  serialize :user
  serialize :geo
  serialize :coordinates
  serialize :place
  serialize :contributors
  serialize :retweeted_status
  serialize :entities

end
