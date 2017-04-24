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

ActiveRecord::Schema.define(version: 20170424105330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "topic_id"
    t.integer  "user_id"
    t.text     "body"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_comments_on_topic_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "pms", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.text     "body"
    t.string   "image"
    t.string   "subject"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subtitles", force: :cascade do |t|
    t.string   "title"
    t.integer  "votes",      default: 0
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["topic_id"], name: "index_subtitles_on_topic_id", using: :btree
    t.index ["user_id"], name: "index_subtitles_on_user_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.integer  "rating",       default: 0
    t.integer  "tweet_volume"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "profile_pic"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "voter_id"
    t.string   "subject_type"
    t.integer  "subject_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "value"
    t.index ["subject_type", "subject_id"], name: "index_votes_on_subject_type_and_subject_id", using: :btree
  end

  add_foreign_key "comments", "topics"
  add_foreign_key "comments", "users"
  add_foreign_key "subtitles", "topics"
  add_foreign_key "subtitles", "users"
end
