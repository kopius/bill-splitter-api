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

ActiveRecord::Schema.define(version: 20161102011140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adjustments", force: :cascade do |t|
    t.string   "label"
    t.decimal  "price"
    t.boolean  "did_participate"
    t.integer  "num_participants"
    t.integer  "share_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "adjustments", ["share_id"], name: "index_adjustments_on_share_id", using: :btree

  create_table "bills", force: :cascade do |t|
    t.integer  "num_people"
    t.decimal  "total_amount"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "bills", ["user_id"], name: "index_bills_on_user_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "shares", force: :cascade do |t|
    t.string   "person_name"
    t.decimal  "base_cost"
    t.integer  "bill_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shares", ["bill_id"], name: "index_shares_on_bill_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "adjustments", "shares"
  add_foreign_key "bills", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "shares", "bills"
end
