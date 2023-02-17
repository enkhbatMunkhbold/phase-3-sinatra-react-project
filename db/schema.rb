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

ActiveRecord::Schema.define(version: 2023_02_08_061042) do

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "actors"
    t.string "img_link"
    t.string "genre"
    t.integer "year"
    t.text "plot"
    t.string "rating"
    t.boolean "favorite"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.integer "movie_id"
    t.boolean "edit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
