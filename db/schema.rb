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

ActiveRecord::Schema.define(version: 2021_08_02_234633) do

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_continents_on_name", unique: true
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.integer "habitants"
    t.integer "superficie"
    t.integer "continent_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["continent_id"], name: "index_countries_on_continent_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "country_id", null: false
    t.integer "sight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_locations_on_country_id"
    t.index ["sight_id"], name: "index_locations_on_sight_id"
  end

  create_table "sights", force: :cascade do |t|
    t.string "name", null: false
    t.date "creation_date", null: false
    t.float "height", null: false
    t.text "history"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_sights_on_name", unique: true
  end

  add_foreign_key "countries", "continents"
  add_foreign_key "locations", "countries"
  add_foreign_key "locations", "sights"
end
