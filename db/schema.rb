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

ActiveRecord::Schema.define(version: 20150407173922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art031s", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "referencia"
    t.string   "nombre_fto"
    t.float    "cant_medida"
    t.integer  "proveedor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "art031s", ["codigo"], name: "index_art031s_on_codigo", unique: true, using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "customer_id"
    t.string   "company_name"
    t.string   "contact"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state_province"
    t.string   "zip_postal_code"
    t.string   "country"
    t.string   "email"
    t.string   "phone"
    t.string   "fax"
    t.string   "terms"
    t.text     "notes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "customers", ["customer_id"], name: "index_customers_on_customer_id", unique: true, using: :btree

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "line_no"
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "purchase_price", precision: 11, scale: 2, default: 0.0
    t.decimal  "shipping",       precision: 11, scale: 2, default: 0.0
    t.decimal  "purchase_total", precision: 11, scale: 2, default: 0.0
    t.decimal  "shipping_total", precision: 11, scale: 2, default: 0.0
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "order_items", ["order_id", "line_no"], name: "index_order_items_on_order_id_and_line_no", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.date     "order_date"
    t.string   "po_number"
    t.string   "terms"
    t.decimal  "purchase_total",       precision: 11, scale: 2, default: 0.0
    t.decimal  "shipping_total",       precision: 11, scale: 2, default: 0.0
    t.decimal  "order_total",          precision: 11, scale: 2, default: 0.0
    t.decimal  "amount_paid",          precision: 11, scale: 2, default: 0.0
    t.decimal  "balance_due",          precision: 11, scale: 2, default: 0.0
    t.text     "special_instructions"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  add_index "orders", ["customer_id", "order_date"], name: "ix_customer_id", order: {"order_date"=>:desc}, using: :btree
  add_index "orders", ["order_date"], name: "ix_order_date", order: {"order_date"=>:desc}, using: :btree

  create_table "pro032s", force: :cascade do |t|
    t.integer  "codigo"
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.string   "movil"
    t.string   "fax"
    t.string   "nota"
    t.text     "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pro032s", ["codigo"], name: "index_pro032s_on_codigo", unique: true, using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "product_id"
    t.string   "description"
    t.decimal  "list_price",  precision: 11, scale: 2, default: 0.0
    t.decimal  "shipping",    precision: 11, scale: 2, default: 0.0
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "products", ["product_id"], name: "index_products_on_product_id", unique: true, using: :btree

end
