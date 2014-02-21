class ChangeTweetRetweetedStatus < ActiveRecord::Migration
  def up
    add_column :tweets, :retweeted_status_id, :string
    add_index :tweets, :retweeted_status_id
    remove_column :tweets, :retweeted_status, :text
  end
end
