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

ActiveRecord::Schema.define(version: 20140814153717) do

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marketplaces", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "retrieve_data_type"
    t.string   "input_data_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suplier_marketplaces", force: true do |t|
    t.integer  "suplier_id"
    t.integer  "marketplace_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login"
    t.string   "password"
  end

  create_table "supliers", force: true do |t|
    t.string   "name"
    t.string   "cnpj"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.integer  "suplier_id"
  end

end
