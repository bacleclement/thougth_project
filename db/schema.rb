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

ActiveRecord::Schema.define(version: 20180318071307) do

  create_table "actions", force: :cascade do |t|
    t.string "type"
    t.integer "mood_check_id"
    t.string "title"
    t.string "hour"
    t.datetime "created_at", null: false
    t.text "description"
    t.datetime "updated_at", null: false
    t.index ["mood_check_id"], name: "index_actions_on_mood_check_id"
  end

  create_table "mood_checks", force: :cascade do |t|
    t.integer "profil_id"
    t.string "situation"
    t.string "type"
    t.text "thougth"
    t.string "emotion"
    t.integer "emotion_level"
    t.string "physiological"
    t.text "negative_proof"
    t.text "positive_proof"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profil_id"], name: "index_mood_checks_on_profil_id"
  end

  create_table "profils", force: :cascade do |t|
    t.string "username"
    t.integer "level"
    t.integer "age"
    t.string "gender"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profils_on_user_id"
  end

end
