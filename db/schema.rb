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

ActiveRecord::Schema.define(version: 2019_05_23_102601) do

  create_table "blogs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.bigint "topic_id"
    t.index ["topic_id"], name: "index_blogs_on_topic_id"
  end

  create_table "portifolios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "body"
    t.text "main_image"
    t.text "thumg_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.integer "percent_utilized"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "badge"
  end

  create_table "technologies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "portifolio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["portifolio_id"], name: "index_technologies_on_portifolio_id"
  end

  create_table "topics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "technologies", "portifolios"
end
