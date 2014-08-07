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

ActiveRecord::Schema.define(version: 20140806202744) do

  create_table "ad_units", force: true do |t|
    t.boolean  "no_api"
    t.boolean  "approved"
    t.string   "name"
    t.integer  "asset_group_id"
    t.string   "type"
    t.integer  "insight"
    t.string   "screen"
    t.integer  "asset_id"
    t.string   "pixel_tracker"
    t.integer  "cta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ad_units", ["asset_group_id"], name: "index_ad_units_on_asset_group_id"
  add_index "ad_units", ["asset_id"], name: "index_ad_units_on_asset_id"
  add_index "ad_units", ["cta_id"], name: "index_ad_units_on_cta_id"

  create_table "asset_groups", force: true do |t|
    t.integer  "brand_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asset_groups", ["brand_id"], name: "index_asset_groups_on_brand_id"

  create_table "assets", force: true do |t|
    t.integer  "asset_group_id"
    t.integer  "asset_type"
    t.integer  "job_id"
    t.string   "screen"
    t.string   "background"
    t.string   "file"
    t.boolean  "flexible"
    t.boolean  "scalable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assets", ["asset_group_id"], name: "index_assets_on_asset_group_id"
  add_index "assets", ["job_id"], name: "index_assets_on_job_id"

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cta", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.boolean  "new_window"
    t.boolean  "full_screen"
    t.integer  "ad_unit_id"
    t.integer  "pixel_width"
    t.integer  "pixel_height"
    t.integer  "right_offset"
    t.integer  "top_offset"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cta", ["ad_unit_id"], name: "index_cta_on_ad_unit_id"

  create_table "insertion_orders", force: true do |t|
    t.integer  "brand_id"
    t.string   "name"
    t.string   "io_number"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "insertion_orders", ["brand_id"], name: "index_insertion_orders_on_brand_id"

  create_table "jobs", force: true do |t|
    t.integer  "progress"
    t.boolean  "failed"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.boolean  "no_api"
    t.integer  "insertion_order_id"
    t.integer  "ad_unit_id"
    t.integer  "impression_goal"
    t.integer  "partner_id"
    t.boolean  "easy_touch"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["ad_unit_id"], name: "index_tags_on_ad_unit_id"
  add_index "tags", ["insertion_order_id"], name: "index_tags_on_insertion_order_id"
  add_index "tags", ["partner_id"], name: "index_tags_on_partner_id"

end
