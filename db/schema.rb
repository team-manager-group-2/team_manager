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

ActiveRecord::Schema.define(version: 20150307161535) do

  create_table "leagues", force: :cascade do |t|
    t.integer "league_id"
    t.integer "team_id"
    t.string  "name"
  end

  create_table "rosters", force: :cascade do |t|
    t.integer "roster_id"
    t.integer "team_id"
    t.integer "player_id"
    t.integer "manager_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "schedule_id"
    t.datetime "game_day"
    t.datetime "practice"
    t.datetime "date"
    t.boolean  "finish"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "team_id"
    t.integer "manager_id"
    t.integer "coach_id"
    t.integer "parent_id"
    t.integer "roster_id"
    t.integer "league_id"
    t.string  "name"
    t.string  "sport"
    t.text    "schedule"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.string   "type"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
