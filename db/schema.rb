# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_05_193645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assists", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_assists_on_game_id"
    t.index ["player_id"], name: "index_assists_on_player_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.datetime "date"
    t.string "venue"
    t.string "opposition"
    t.boolean "completed"
    t.string "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "mom_winner"
    t.string "dod_winner"
    t.index ["team_id"], name: "index_games_on_team_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.string "comment"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_notes_on_game_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "scorers", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_scorers_on_game_id"
    t.index ["player_id"], name: "index_scorers_on_player_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.bigint "sport_id", null: false
    t.string "colour1"
    t.string "colour2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sport_id"], name: "index_teams_on_sport_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "team_id"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
    t.bigint "usertype_id"
    t.bigint "player_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_users_on_player_id"
    t.index ["team_id"], name: "index_users_on_team_id"
    t.index ["usertype_id"], name: "index_users_on_usertype_id"
  end

  create_table "usertypes", force: :cascade do |t|
    t.string "usertype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.bigint "player_id", null: false
    t.bigint "category_id", null: false
    t.string "comment"
    t.string "points"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_votes_on_category_id"
    t.index ["game_id"], name: "index_votes_on_game_id"
    t.index ["player_id"], name: "index_votes_on_player_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "assists", "games"
  add_foreign_key "assists", "players"
  add_foreign_key "games", "teams"
  add_foreign_key "notes", "games"
  add_foreign_key "notes", "users"
  add_foreign_key "players", "teams"
  add_foreign_key "scorers", "games"
  add_foreign_key "scorers", "players"
  add_foreign_key "teams", "sports"
  add_foreign_key "users", "players"
  add_foreign_key "users", "teams"
  add_foreign_key "users", "usertypes"
  add_foreign_key "votes", "categories"
  add_foreign_key "votes", "games"
  add_foreign_key "votes", "players"
  add_foreign_key "votes", "users"
end
