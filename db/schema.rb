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

ActiveRecord::Schema.define(version: 20150826201720) do

  create_table "attribute_references", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test1s", force: :cascade do |t|
    t.binary   "attribute_binary",       limit: 2147483647
    t.boolean  "attribute_boolean"
    t.date     "attribute_date"
    t.datetime "attribute_datetime"
    t.decimal  "attribute_decimal",                         precision: 18, scale: 0
    t.float    "attribute_float"
    t.integer  "attribute_integer",      limit: 4
    t.integer  "attribute_reference_id", limit: 4
    t.string   "attribute_string",       limit: 4000
    t.text     "attribute_text",         limit: 2147483647
    t.time     "attribute_time"
    t.datetime "created_at",                                                         null: false
    t.datetime "updated_at",                                                         null: false
  end

  add_index "test1s", ["attribute_reference_id"], name: "index_test1s_on_attribute_reference_id"

  add_foreign_key "test1s", "attribute_references"
end
