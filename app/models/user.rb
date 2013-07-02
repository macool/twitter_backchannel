class User < ActiveRecord::Base
  
  validates :id_str, :uniqueness => true

  serialize :entities

  has_many :tweets

end
