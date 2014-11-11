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

ActiveRecord::Schema.define(version: 20141104141759) do

  create_table "account_entries", force: true do |t|
    t.integer  "customer_id"
    t.float    "time",        limit: 24
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
    t.string   "type"
    t.decimal  "amount",                 precision: 10, scale: 0
    t.string   "state"
  end

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "about"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "balance",    precision: 10, scale: 0
  end

  create_table "accounts_projects", force: true do |t|
    t.integer  "employee_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts_projects", ["employee_id"], name: "index_accounts_projects_on_employee_id", using: :btree
  add_index "accounts_projects", ["project_id"], name: "index_accounts_projects_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["customer_id"], name: "index_projects_on_customer_id", using: :btree

end
