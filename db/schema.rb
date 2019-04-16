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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 5) do
=======
ActiveRecord::Schema.define(version: 3) do

  create_table "contracts", force: :cascade do |t|
    t.string "midstream_id"
    t.string "producer_id"
  end
>>>>>>> afc84cfaae9ab435bb9ee4af733a88d412ad2148

  create_table "midstreams", force: :cascade do |t|
    t.string "rep_name"
    t.string "user_name"
    t.string "password"
  end

<<<<<<< HEAD
  create_table "mpucontracts", force: :cascade do |t|
    t.string "name"
    t.integer "midstream_id"
    t.integer "purchaser_id"
    t.integer "total_price"
  end

  create_table "purchasers", force: :cascade do |t|
    t.string "purchaser_name"
    t.text "type_of_product"
    t.integer "amount_demand"
    t.string "location"
    t.integer "price_per_unit"
=======
  create_table "producers", force: :cascade do |t|
    t.string  "producer_name"
    t.string  "type_of_product"
    t.integer "amount_liftable"
    t.string  "location"
    t.integer "daily_production"
    t.integer "price"
>>>>>>> afc84cfaae9ab435bb9ee4af733a88d412ad2148
  end

end
