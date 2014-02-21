class AddHiddenToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :hidden, :boolean, default: false
    add_index :tweets, :hidden
  end
end
