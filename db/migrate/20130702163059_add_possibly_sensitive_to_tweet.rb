class AddPossiblySensitiveToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :possibly_sensitive, :boolean
  end
end
