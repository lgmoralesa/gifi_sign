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

ActiveRecord::Schema.define(version: 20170529192431) do

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id"
    t.index ["member_id"], name: "index_groups_on_member_id"
  end

  create_table "groups_lines", force: :cascade do |t|
    t.integer "group_id"
    t.integer "line_id"
    t.index ["group_id"], name: "index_groups_lines_on_group_id"
    t.index ["line_id"], name: "index_groups_lines_on_line_id"
  end

  create_table "lines", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "pass"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "group_id"
    t.index ["group_id"], name: "index_members_on_group_id"
  end

  create_table "members_resumees", force: :cascade do |t|
    t.integer "member_id"
    t.integer "resumee_id"
    t.index ["member_id"], name: "index_members_resumees_on_member_id"
    t.index ["resumee_id"], name: "index_members_resumees_on_resumee_id"
  end

  create_table "resumees", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
