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

ActiveRecord::Schema.define(version: 2020_04_14_221444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_tasks", force: :cascade do |t|
    t.string "item"
    t.boolean "closed"
    t.integer "job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.string "status"
    t.boolean "interview"
    t.string "location"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "dateApplied"
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.integer "job_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "url"
    t.integer "job_id"
  end

  create_table "user_notes", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "category"
    t.integer "user_id"
  end

  create_table "user_tasks", force: :cascade do |t|
    t.string "item"
    t.boolean "closed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
