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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150711134821) do

  create_table "albums", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "url_key"
    t.integer  "user_id"
    t.integer  "portfolio_id"
  end

  add_index "albums", ["portfolio_id"], name: "index_albums_on_portfolio_id"
  add_index "albums", ["user_id"], name: "index_albums_on_user_id"

  create_table "navs", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "navs", ["user_id"], name: "index_navs_on_user_id"

  create_table "pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "title"
    t.text     "text_content"
    t.text     "url_key"
    t.integer  "user_id"
  end

  add_index "pages", ["user_id"], name: "index_pages_on_user_id"

  create_table "photos", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.integer  "album_id"
    t.integer  "portfolios_id"
    t.integer  "pages_id"
    t.boolean  "inactive",           default: false, null: false
  end

  add_index "photos", ["album_id"], name: "index_photos_on_album_id"
  add_index "photos", ["pages_id"], name: "index_photos_on_pages_id"
  add_index "photos", ["portfolios_id"], name: "index_photos_on_portfolios_id"
  add_index "photos", ["user_id"], name: "index_photos_on_user_id"

  create_table "portfolios", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "url_key"
    t.integer  "user_id"
    t.integer  "album_id"
  end

  add_index "portfolios", ["album_id"], name: "index_portfolios_on_album_id"
  add_index "portfolios", ["user_id"], name: "index_portfolios_on_user_id"

  create_table "settings", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "facebook_name"
    t.text     "instagram_name"
    t.text     "twitter_name"
    t.text     "google_analytics"
    t.integer  "user_id"
  end

  add_index "settings", ["user_id"], name: "index_settings_on_user_id"

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
