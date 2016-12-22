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

ActiveRecord::Schema.define(version: 20161222171749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "courier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["courier_id"], name: "index_admins_on_courier_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "street"
    t.string   "suite"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "courier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["courier_id"], name: "index_companies_on_courier_id", using: :btree

  create_table "couriers", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "street"
    t.string   "suite"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "distance"
    t.decimal  "weight"
    t.decimal  "weightTotal"
    t.decimal  "wait"
    t.decimal  "waitTotal"
  end

  add_index "orders", ["company_id"], name: "index_orders_on_company_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "rates", force: true do |t|
    t.decimal  "normHour"
    t.decimal  "normFirst"
    t.decimal  "normPerMile"
    t.decimal  "holHour"
    t.decimal  "holFirst"
    t.decimal  "holPerMile"
    t.decimal  "ahHour"
    t.decimal  "ahFirst"
    t.decimal  "ahPerMile"
    t.decimal  "weightFree"
    t.decimal  "weightCost"
    t.decimal  "waitFree"
    t.decimal  "waitCost"
    t.integer  "courier_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["company_id"], name: "index_rates_on_company_id", using: :btree
  add_index "rates", ["courier_id"], name: "index_rates_on_courier_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree

end
