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

ActiveRecord::Schema.define(version: 20171009220127) do

  create_table "companies", force: :cascade do |t|
    t.text     "name"
    t.text     "short_description"
    t.text     "city"
    t.text     "state"
    t.date     "founded"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "founders", force: :cascade do |t|
    t.text     "name"
    t.text     "title"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_companies", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tag_companies", ["company_id"], name: "index_tag_companies_on_company_id"
  add_index "tag_companies", ["tag_id"], name: "index_tag_companies_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
