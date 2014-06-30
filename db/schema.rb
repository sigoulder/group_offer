# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140630143702) do

  create_table "offers", force: true do |t|
    t.string   "name"
    t.integer  "min_participants"
    t.date     "start_at"
    t.date     "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "max_participants"
  end

  create_table "participants", force: true do |t|
    t.integer  "member_id"
    t.integer  "offer_id"
    t.integer  "quota"
    t.boolean  "on_switch"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products_tasks", force: true do |t|
    t.integer  "product_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products_tasks", ["product_id"], name: "index_products_tasks_on_product_id"
  add_index "products_tasks", ["task_id"], name: "index_products_tasks_on_task_id"

  create_table "task_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.integer  "offer_id"
    t.integer  "task_type_id"
    t.boolean  "on_switch"
    t.integer  "quota"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
