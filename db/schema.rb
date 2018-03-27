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

ActiveRecord::Schema.define(version: 20180326193846) do

  create_table "creatures", force: :cascade do |t|
    t.integer "user_id"
    t.integer "size", default: 5
    t.boolean "fly", default: false
    t.boolean "swim", default: false
    t.boolean "alive", default: true
    t.string "name"
    t.string "creature_type", default: "hungry hungry caterpillar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_creatures_on_user_id"
  end

  create_table "decisions", force: :cascade do |t|
    t.integer "location_id"
    t.string "content"
    t.boolean "alive", default: true
    t.integer "goto"
    t.string "cod", default: "staying alibe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_decisions_on_location_id"
  end

  create_table "edibles", force: :cascade do |t|
    t.string "name"
    t.boolean "fly"
    t.boolean "swim"
    t.integer "value"
    t.boolean "eaten", default: false
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_edibles_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.boolean "swim"
    t.boolean "fly"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "user_id"
    t.integer "creature_id"
    t.integer "location_id"
    t.string "cause_of_death"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creature_id"], name: "index_results_on_creature_id"
    t.index ["location_id"], name: "index_results_on_location_id"
    t.index ["user_id"], name: "index_results_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
