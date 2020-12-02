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

ActiveRecord::Schema.define(version: 2020_12_02_153306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_variables", force: :cascade do |t|
    t.integer "orders_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "couriers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "surname"
    t.string "adress"
    t.string "email"
    t.date "hiring_date"
    t.string "working_hours"
    t.string "password"
    t.integer "number_of_hours_worked_in_month"
    t.string "login"
    t.string "phone"
    t.string "contract_type"
    t.float "hour_pay"
    t.string "company"
    t.string "car_type"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "surname"
    t.string "adress"
    t.string "email"
    t.date "hiring_date"
    t.string "working_hours"
    t.string "password"
    t.integer "number_of_hours_worked_in_month"
    t.string "login"
    t.string "phone"
    t.string "contract_type"
    t.float "hour_pay"
    t.string "personal_id"
    t.integer "number_of_used_vacation_days"
    t.integer "room_number"
    t.string "owned_devices"
  end

  create_table "orders", force: :cascade do |t|
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "order_date"
    t.date "delivery_date"
    t.string "status"
    t.string "comment"
    t.bigint "employees_id"
    t.bigint "couriers_id"
    t.bigint "volonteers_id"
    t.index ["couriers_id"], name: "index_orders_on_couriers_id"
    t.index ["employees_id"], name: "index_orders_on_employees_id"
    t.index ["volonteers_id"], name: "index_orders_on_volonteers_id"
  end

  create_table "product_to_orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.bigint "orders_id"
    t.bigint "products_id"
    t.index ["orders_id"], name: "index_product_to_orders_on_orders_id"
    t.index ["products_id"], name: "index_product_to_orders_on_products_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "producent"
    t.float "price"
    t.string "description"
  end

  create_table "volonteers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "surname"
    t.string "adress"
    t.string "email"
    t.date "hiring_date"
    t.string "working_hours"
    t.string "password"
    t.integer "number_of_hours_worked_in_month"
    t.string "login"
    t.string "phone"
    t.string "contract_type"
    t.float "hour_pay"
    t.string "personal_id"
    t.boolean "is_adult"
    t.binary "parent_agreement"
  end

  add_foreign_key "orders", "couriers", column: "couriers_id"
  add_foreign_key "orders", "employees", column: "employees_id"
  add_foreign_key "orders", "volonteers", column: "volonteers_id"
  add_foreign_key "product_to_orders", "orders", column: "orders_id"
  add_foreign_key "product_to_orders", "products", column: "products_id"
end
