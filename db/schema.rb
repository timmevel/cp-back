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

ActiveRecord::Schema.define(version: 20150211164824) do

  create_table "demand_materials", force: true do |t|
    t.integer  "pot_id"
    t.integer  "material_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "demand_materials", ["material_id"], name: "index_demand_materials_on_material_id"
  add_index "demand_materials", ["pot_id"], name: "index_demand_materials_on_pot_id"

  create_table "donation_cashes", force: true do |t|
    t.integer  "user_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "donation_cashes", ["user_id"], name: "index_donation_cashes_on_user_id"

  create_table "donation_credits", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "donation_credits", ["user_id"], name: "index_donation_credits_on_user_id"

  create_table "donation_materials", force: true do |t|
    t.integer  "user_id"
    t.integer  "material_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "donation_materials", ["material_id"], name: "index_donation_materials_on_material_id"
  add_index "donation_materials", ["user_id"], name: "index_donation_materials_on_user_id"

  create_table "materials", force: true do |t|
    t.string   "type"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pots", force: true do |t|
    t.integer  "user_id"
    t.text     "descritpion"
    t.float    "cash_demand"
    t.float    "cash_collected"
    t.integer  "credits_collected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pots", ["user_id"], name: "index_pots_on_user_id"

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.date     "date_of_birth"
    t.integer  "credits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
