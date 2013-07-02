class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :id_str
      t.string :name
      t.string :screen_name
      t.string :location
      t.string :description
      t.string :url
      t.text :entities
      t.boolean :protected
      t.integer :followers_count
      t.integer :friends_count
      t.integer :listed_count
      t.integer :favourites_count
      t.string :utc_offset
      t.string :time_zone
      t.boolean :geo_enabled
      t.boolean :verified
      t.integer :statuses_count
      t.string :lang
      t.boolean :contributors_enabled
      t.boolean :is_translator
      t.string :profile_background_color
      t.string :profile_banner_url
      t.string :profile_background_image_url
      t.string :profile_background_image_url_https
      t.string :profile_background_tile
      t.string :profile_image_url
      t.string :profile_image_url_https
      t.string :profile_link_color
      t.string :profile_sidebar_border_color
      t.string :profile_sidebar_fill_color
      t.string :profile_text_color
      t.boolean :profile_use_background_image
      t.boolean :default_profile
      t.boolean :default_profile_image
      t.boolean :following
      t.boolean :follow_request_sent
      t.boolean :notifications
      t.timestamps
    end
    add_index :users, :id_str, unique: true
  end
end
