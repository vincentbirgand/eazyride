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

ActiveRecord::Schema.define(version: 2018_12_04_133102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivees", force: :cascade do |t|
    t.bigint "journey_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journey_id"], name: "index_drivees_on_journey_id"
    t.index ["user_id"], name: "index_drivees_on_user_id"
  end

  create_table "journeys", force: :cascade do |t|
    t.string "car_type"
    t.integer "seat_available"
    t.text "description"
    t.string "source_city"
    t.string "destination_city"
    t.datetime "start_time"
    t.datetime "end_time"
    t.float "price"
    t.integer "total_distance"
    t.bigint "activity_id"
    t.bigint "user_id"
    t.boolean "accepts_gear"
    t.boolean "shares_gear"
    t.boolean "lends_gear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_journeys_on_activity_id"
    t.index ["user_id"], name: "index_journeys_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.string "status"
    t.bigint "journey_id"
    t.bigint "sender_id"
    t.bigint "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journey_id"], name: "index_messages_on_journey_id"
    t.index ["receiver_id"], name: "index_messages_on_receiver_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "description"
    t.bigint "journey_id"
    t.bigint "reviewee_id"
    t.bigint "reviewer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journey_id"], name: "index_reviews_on_journey_id"
    t.index ["reviewee_id"], name: "index_reviews_on_reviewee_id"
    t.index ["reviewer_id"], name: "index_reviews_on_reviewer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.date "birth_date"
    t.text "description"
    t.string "phone"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "driving_licence"
    t.boolean "verified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "drivees", "journeys"
  add_foreign_key "drivees", "users"
  add_foreign_key "journeys", "activities"
  add_foreign_key "journeys", "users"
  add_foreign_key "messages", "journeys"
  add_foreign_key "messages", "users", column: "receiver_id"
  add_foreign_key "messages", "users", column: "sender_id"
  add_foreign_key "reviews", "journeys"
  add_foreign_key "reviews", "users", column: "reviewee_id"
  add_foreign_key "reviews", "users", column: "reviewer_id"
end
