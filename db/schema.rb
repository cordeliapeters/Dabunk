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

ActiveRecord::Schema.define(version: 20150325050512) do

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "college_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.integer  "population"
    t.string   "school_type"
    t.string   "acronym"
    t.string   "address"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "web_url"
    t.boolean  "greek_life"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "url"
    t.integer  "undergrad_id"
    t.integer  "college_id"
    t.string   "category"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "undergrads", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "type"
    t.string   "password_digest"
    t.string   "grade"
    t.string   "hometown"
    t.string   "activities"
    t.string   "major"
    t.string   "minor"
    t.integer  "college_id"
    t.string   "greek"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
