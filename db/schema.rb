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

ActiveRecord::Schema.define(version: 2019_08_15_175400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accepteds", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "mesima_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mesima_id"], name: "index_accepteds_on_mesima_id"
    t.index ["user_id"], name: "index_accepteds_on_user_id"
  end

  create_table "mesimas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "status"
    t.integer "worth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "alyah_date"
    t.integer "pita", default: 0
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accepteds", "mesimas"
  add_foreign_key "accepteds", "users"
end
