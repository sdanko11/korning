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

ActiveRecord::Schema.define(version: 20131217191255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.string   "name",               null: false
    t.string   "acct_numbner",       null: false
    t.string   "url",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rate_of_invoice_id"
  end

  create_table "employees", force: true do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.integer  "sale_id"
    t.decimal  "sale_amount_per_payment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "customer_id"
    t.integer  "employee_id"
    t.decimal  "sale_amount"
    t.integer  "product_id"
    t.string   "rate_of_invoice"
    t.integer  "units_sold"
    t.string   "date_sold_string"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invoice_number"
    t.datetime "date_sold"
  end

end
