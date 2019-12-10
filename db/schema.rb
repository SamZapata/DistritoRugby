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

ActiveRecord::Schema.define(version: 2019_12_10_040250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "core_news", force: :cascade do |t|
    t.string "title"
    t.text "talking"
    t.string "emb_video"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image", default: "common/400x400.png"
    t.string "image_legend"
    t.string "video_legend"
  end

  create_table "core_stories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "emb_video"
    t.string "video_caption"
    t.string "image"
    t.string "img_caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "birthdate"
    t.datetime "deathdate"
    t.string "phrase"
    t.string "intro"
    t.string "socialmedia", default: [], array: true
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "news_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
