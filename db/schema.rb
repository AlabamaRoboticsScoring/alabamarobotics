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

ActiveRecord::Schema.define(version: 20151022214154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attempts", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "course_id"
    t.integer  "points"
    t.datetime "completion_time"
    t.string   "judge_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "attempts", ["course_id"], name: "index_attempts_on_course_id", using: :btree
  add_index "attempts", ["team_id"], name: "index_attempts_on_team_id", using: :btree

  create_table "challenges", force: :cascade do |t|
    t.string   "name"
    t.boolean  "duration?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "challenge_id"
    t.string   "pin"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "courses", ["challenge_id"], name: "index_courses_on_challenge_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "members"
    t.integer  "age_group"
    t.string   "school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attempts", "courses"
  add_foreign_key "attempts", "teams"
  add_foreign_key "courses", "challenges"
end
