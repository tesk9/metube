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

ActiveRecord::Schema.define(version: 20141218204634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commentables", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "commentable_id"
    t.integer  "comment_id"
  end

  add_index "commentables", ["comment_id"], name: "index_commentables_on_comment_id", using: :btree

  create_table "comments", force: true do |t|
    t.string   "subject"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "video_id"
  end

  add_index "comments", ["video_id"], name: "index_comments_on_video_id", using: :btree

  create_table "videos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "url"
    t.string   "desc"
  end

end
