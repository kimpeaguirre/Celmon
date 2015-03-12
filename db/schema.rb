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

ActiveRecord::Schema.define(version: 20150312093338) do

  create_table "creature_locations", force: true do |t|
    t.integer  "location_id"
    t.integer  "creature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creatures", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.text     "description"
    t.integer  "hp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "user_id"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "gps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", force: true do |t|
    t.string   "name"
    t.integer  "max_number"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trades", force: true do |t|
    t.integer  "user_id"
    t.integer  "user_creature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_battles", force: true do |t|
    t.integer  "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_creature_moves", force: true do |t|
    t.integer  "user_creature_id"
    t.integer  "move_id"
    t.integer  "max_number"
    t.integer  "exp"
    t.integer  "dp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_creatures", force: true do |t|
    t.integer  "user_id"
    t.string   "nickname"
    t.integer  "hp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_menus", force: true do |t|
    t.integer  "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_trades", force: true do |t|
    t.integer  "user_id"
    t.string   "requests"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "handle"
    t.string   "email"
    t.integer  "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
