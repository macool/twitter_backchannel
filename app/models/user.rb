class User < ActiveRecord::Base

  validates :id_str, :uniqueness => true

  serialize :entities

  has_many :tweets

  attr_accessor :is_translation_enabled

end
