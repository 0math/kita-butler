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

ActiveRecord::Schema.define(version: 2019_11_29_140912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favourites", force: :cascade do |t|
    t.bigint "kindergarden_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["kindergarden_id"], name: "index_favourites_on_kindergarden_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "kids", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "primary_language"
    t.string "secondary_language"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
    t.index ["user_id"], name: "index_kids_on_user_id"
  end

  create_table "kindergardens", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "language"
    t.integer "capacity"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "email"
    t.float "latitude"
    t.float "longitude"
    t.boolean "is_available"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.bigint "kindergarden_id"
    t.bigint "kid_id"
    t.datetime "updated_at", null: false
    t.index ["kid_id"], name: "index_reservations_on_kid_id"
    t.index ["kindergarden_id"], name: "index_reservations_on_kindergarden_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reservation_id"], name: "index_reviews_on_reservation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favourites", "kindergardens"
  add_foreign_key "favourites", "users"
  add_foreign_key "kids", "users"
  add_foreign_key "reservations", "kids"
  add_foreign_key "reservations", "kindergardens"
  add_foreign_key "reviews", "reservations"
end
