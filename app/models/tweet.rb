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

  validates :id_str, :uniqueness => true

  belongs_to :user

  def user=(user_hash)
    if User.exists?(id_str: user_hash[:id_str])
      the_user = User.find_by_id_str(user_hash[:id_str])
      the_user.update_attributes user_hash
    else
      the_user = User.create! user_hash
    end
    self.user_id = the_user.id
    the_user
  end

end
