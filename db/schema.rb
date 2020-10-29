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

ActiveRecord::Schema.define(version: 2020_10_29_202259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
  end

  create_table "playlist_additions", force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.bigint "song_id", null: false
    t.boolean "played"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["playlist_id"], name: "index_playlist_additions_on_playlist_id"
    t.index ["song_id"], name: "index_playlist_additions_on_song_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.bigint "band_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["band_id"], name: "index_playlists_on_band_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "song_id", null: false
    t.bigint "show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["show_id"], name: "index_requests_on_show_id"
    t.index ["song_id"], name: "index_requests_on_song_id"
  end

  create_table "shows", force: :cascade do |t|
    t.date "date"
    t.bigint "band_id", null: false
    t.string "venue_name"
    t.integer "playlist_id"
    t.integer "price_per_request"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "complete"
    t.index ["band_id"], name: "index_shows_on_band_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "artist"
    t.string "album"
    t.string "release_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "playlist_additions", "playlists"
  add_foreign_key "playlist_additions", "songs"
  add_foreign_key "playlists", "bands"
  add_foreign_key "requests", "shows"
  add_foreign_key "requests", "songs"
  add_foreign_key "shows", "bands"
end
