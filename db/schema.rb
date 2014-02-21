# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140221075603) do

  create_table "tweets", :force => true do |t|
    t.text     "metadata"
    t.string   "id_str"
    t.string   "source"
    t.boolean  "truncated"
    t.string   "in_reply_to_status_id_str"
    t.string   "in_reply_to_user_id_str"
    t.string   "in_reply_to_screen_name"
    t.integer  "user_id"
    t.text     "geo"
    t.text     "coordinates"
    t.text     "place"
    t.text     "contributors"
    t.integer  "retweet_count"
    t.integer  "favorite_count"
    t.string   "text"
    t.text     "entities"
    t.boolean  "favorited"
    t.boolean  "retweeted"
    t.string   "lang"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.boolean  "possibly_sensitive"
    t.string   "retweeted_status_id"
    t.boolean  "hidden",                    :default => false
  end

  add_index "tweets", ["hidden"], :name => "index_tweets_on_hidden"
  add_index "tweets", ["id_str"], :name => "index_tweets_on_id_str", :unique => true
  add_index "tweets", ["retweeted_status_id"], :name => "index_tweets_on_retweeted_status_id"
  add_index "tweets", ["user_id"], :name => "index_tweets_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "id_str"
    t.string   "name"
    t.string   "screen_name"
    t.string   "location"
    t.string   "description"
    t.string   "url"
    t.text     "entities"
    t.boolean  "protected"
    t.integer  "followers_count"
    t.integer  "friends_count"
    t.integer  "listed_count"
    t.integer  "favourites_count"
    t.string   "utc_offset"
    t.string   "time_zone"
    t.boolean  "geo_enabled"
    t.boolean  "verified"
    t.integer  "statuses_count"
    t.string   "lang"
    t.boolean  "contributors_enabled"
    t.boolean  "is_translator"
    t.string   "profile_background_color"
    t.string   "profile_banner_url"
    t.string   "profile_background_image_url"
    t.string   "profile_background_image_url_https"
    t.string   "profile_background_tile"
    t.string   "profile_image_url"
    t.string   "profile_image_url_https"
    t.string   "profile_link_color"
    t.string   "profile_sidebar_border_color"
    t.string   "profile_sidebar_fill_color"
    t.string   "profile_text_color"
    t.boolean  "profile_use_background_image"
    t.boolean  "default_profile"
    t.boolean  "default_profile_image"
    t.boolean  "following"
    t.boolean  "follow_request_sent"
    t.boolean  "notifications"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "users", ["id_str"], :name => "index_users_on_id_str", :unique => true

end
