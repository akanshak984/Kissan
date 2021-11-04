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

ActiveRecord::Schema.define(version: 2020_01_20_101937) do

  create_table "addresses", force: :cascade do |t|
    t.string "line_1"
    t.string "line_2"
    t.string "city"
    t.string "pincode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "farmer_id"
    t.string "state"
    t.string "country"
    t.index ["farmer_id"], name: "index_addresses_on_farmer_id"
  end

  create_table "farmer_instruments", force: :cascade do |t|
    t.boolean "is_available"
    t.string "rent_per_hour"
    t.string "deposit"
    t.date "available_from_date"
    t.date "available_to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "farmer_id"
    t.integer "instrument_id"
    t.index ["farmer_id"], name: "index_farmer_instruments_on_farmer_id"
    t.index ["instrument_id"], name: "index_farmer_instruments_on_instrument_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "instrument_name"
    t.string "brand"
    t.string "specification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rents", force: :cascade do |t|
    t.string "from_date"
    t.string "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "farmer_id"
    t.integer "farmer_instrument_id"
    t.index ["farmer_id"], name: "index_rents_on_farmer_id"
    t.index ["farmer_instrument_id"], name: "index_rents_on_farmer_instrument_id"
  end

end