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

ActiveRecord::Schema[7.1].define(version: 2024_07_14_152505) do
  create_table "cinema_placements", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "cinema_id", null: false
    t.integer "time_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_cinema_placements_on_cinema_id"
    t.index ["movie_id"], name: "index_cinema_placements_on_movie_id"
    t.index ["time_id"], name: "index_cinema_placements_on_time_id"
  end

  create_table "cinema_placings", force: :cascade do |t|
    t.integer "movie_detail_id", null: false
    t.integer "cinema_id", null: false
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "day_of_week"
    t.index ["cinema_id"], name: "index_cinema_placings_on_cinema_id"
    t.index ["movie_detail_id"], name: "index_cinema_placings_on_movie_detail_id"
  end

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_number"], name: "index_customers_on_phone_number", unique: true
  end

  create_table "movie_details", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.date "production_year"
    t.decimal "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.date "production_year"
    t.decimal "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderings", force: :cascade do |t|
    t.integer "movie_detail_id", null: false
    t.integer "cinema_placing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id", null: false
    t.index ["cinema_placing_id"], name: "index_orderings_on_cinema_placing_id"
    t.index ["customer_id"], name: "index_orderings_on_customer_id"
    t.index ["movie_detail_id"], name: "index_orderings_on_movie_detail_id"
  end

  add_foreign_key "cinema_placements", "cinemas"
  add_foreign_key "cinema_placements", "movies"
  add_foreign_key "cinema_placements", "times"
  add_foreign_key "cinema_placings", "cinemas"
  add_foreign_key "cinema_placings", "movie_details"
  add_foreign_key "orderings", "cinema_placings"
  add_foreign_key "orderings", "customers"
  add_foreign_key "orderings", "movie_details"
end
