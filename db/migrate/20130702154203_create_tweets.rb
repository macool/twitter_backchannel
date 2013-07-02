class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :metadata
      t.string :id_str
      t.string :text
      t.string :source
      t.boolean :truncated
      t.string :in_reply_to_status_id_str
      t.string :in_reply_to_user_id_str
      t.string :in_reply_to_screen_name
      t.text :user
      t.text :geo
      t.text :coordinates
      t.text :place
      t.text :contributors
      t.text :retweeted_status
      t.integer :retweet_count
      t.integer :favorite_count
      t.text :entities
      t.boolean :favorited
      t.boolean :retweeted
      t.string :lang
      t.timestamps
    end
  end
end
