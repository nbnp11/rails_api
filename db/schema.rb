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

ActiveRecord::Schema.define(version: 2019_02_17_172308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: :cascade do |t|
    t.bigint "building_id"
    t.integer "area"
    t.integer "floor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_blocks_on_building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "bclass"
    t.string "street"
    t.string "housenumber"
    t.integer "floors"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "block_id"
    t.string "offertype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_id"], name: "index_offers_on_block_id"
  end

  create_table "prices", force: :cascade do |t|
    t.bigint "offer_id"
    t.integer "pricevalue"
    t.integer "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_prices_on_offer_id"
  end

  add_foreign_key "blocks", "buildings"
  add_foreign_key "offers", "blocks"
  add_foreign_key "prices", "offers"
end
