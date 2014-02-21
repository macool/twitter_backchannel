class Tweet < ActiveRecord::Base
  attr_accessor :in_reply_to_status_id,
                :in_reply_to_user_id

  serialize :metadata
  serialize :user
  serialize :geo
  serialize :coordinates
  serialize :place
  serialize :contributors
  serialize :entities

  validates :id_str, :uniqueness => true

  belongs_to :user

  default_scope { newers_first }

  scope :newers_first, -> { order "id desc" }
  scope :no_retweets, -> { where "text NOT LIKE 'RT%'" }
  scope :retweets_for, ->(id_str) { where retweeted_status_id: id_str }
  scope :not_hidden, -> { where "hidden = 0" }
  scope :hidden, -> { where hidden: true }

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

  def retweeted_status=(hash)
    self.retweeted_status_id = hash[:id_str]
  end

  def retweeters
    User.where id: self.class.retweets_for(id_str).user_ids
  end

  def self.ids
    select(:id).map &:id
  end

  def self.user_ids
    select(:user_id).map &:user_id
  end

  def self.since_id
    if count > 0
      order("id_str DESC").first(select: :id_str).id_str.to_i
    else
      1
    end
  end

end
