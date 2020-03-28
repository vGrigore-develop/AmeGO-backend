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

ActiveRecord::Schema.define(version: 2020_03_28_132515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "hashed_password"
    t.string "date_of_birth"
    t.string "phone_number"
    t.string "last_location"
    t.string "last_participation"
    t.integer "main_trait_ids"
    t.integer "secondary_traits_ids"
    t.string "gender"
    t.integer "points", default: 0
    t.text "summary"
    t.integer "xp_points", default: 0
    t.integer "amigos", default: 100
    t.integer "achievements_ids"
    t.boolean "subscription", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
