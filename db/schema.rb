# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_04_022410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "full_name"
    t.string "document"
    t.string "cellphone"
    t.string "address"
    t.string "complement"
    t.string "district"
    t.bigint "city_id", null: false
    t.boolean "under_age"
    t.bigint "responsible_id"
    t.boolean "active", default: true
    t.string "type_document"
    t.date "date"
    t.index ["city_id"], name: "index_clients_on_city_id"
    t.index ["responsible_id"], name: "index_clients_on_responsible_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "full_name"
    t.string "cpf"
    t.string "cellphone_one"
    t.string "cellphone_two"
    t.string "nickname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active", default: true
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "travels", force: :cascade do |t|
    t.date "date"
    t.integer "status"
    t.bigint "vehicle_id", null: false
    t.bigint "driver_id", null: false
    t.bigint "origin_id", null: false
    t.bigint "destination_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "index_travels_on_destination_id"
    t.index ["driver_id"], name: "index_travels_on_driver_id"
    t.index ["origin_id"], name: "index_travels_on_origin_id"
    t.index ["vehicle_id"], name: "index_travels_on_vehicle_id"
  end

  create_table "type_of_payments", force: :cascade do |t|
    t.integer "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "plate"
    t.string "model_description"
    t.string "year"
    t.boolean "toilet"
    t.integer "number_of_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cities", "states"
  add_foreign_key "clients", "cities"
  add_foreign_key "clients", "clients", column: "responsible_id"
  add_foreign_key "travels", "cities", column: "destination_id"
  add_foreign_key "travels", "cities", column: "origin_id"
  add_foreign_key "travels", "drivers"
  add_foreign_key "travels", "vehicles"
end
