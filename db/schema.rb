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

ActiveRecord::Schema.define(version: 20160318174859) do

  create_table "Users", force: :cascade do |t|
    t.string   "email",      limit: 25,  null: false
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 25
    t.string   "gender",     limit: 7
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "password",   limit: 255
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "albums", force: :cascade do |t|
    t.string   "albumTitle", limit: 35, null: false
    t.integer  "year",       limit: 4
    t.integer  "artist_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "artistName", limit: 35, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "emotions", force: :cascade do |t|
    t.string   "emotionType", limit: 15, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "histories", force: :cascade do |t|
    t.datetime "playtime"
    t.integer  "user_id",    limit: 4
    t.integer  "emotion_id", limit: 4
    t.integer  "music_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "histories", ["emotion_id"], name: "index_histories_on_emotion_id", using: :btree
  add_index "histories", ["music_id"], name: "index_histories_on_music_id", using: :btree
  add_index "histories", ["user_id"], name: "index_histories_on_user_id", using: :btree

  create_table "musics", force: :cascade do |t|
    t.string   "musicTitle", limit: 35, null: false
    t.integer  "artist_id",  limit: 4
    t.integer  "year",       limit: 4
    t.integer  "album_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "musics", ["album_id"], name: "index_musics_on_album_id", using: :btree
  add_index "musics", ["artist_id"], name: "index_musics_on_artist_id", using: :btree

  create_table "topplaylists", force: :cascade do |t|
    t.string   "musicName",  limit: 35
    t.integer  "emotion_id", limit: 4
    t.integer  "music_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "topplaylists", ["emotion_id"], name: "index_topplaylists_on_emotion_id", using: :btree
  add_index "topplaylists", ["music_id"], name: "index_topplaylists_on_music_id", using: :btree

end
