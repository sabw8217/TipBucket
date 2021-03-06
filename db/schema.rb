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

ActiveRecord::Schema.define(version: 20130609204211) do

  create_table "tips", force: true do |t|
    t.string   "location"
    t.string   "crime_type"
    t.boolean  "has_occurred"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "height"
    t.string   "haircolor"
    t.string   "race"
    t.string   "gender"
    t.string   "clothes"
    t.decimal  "lat",           precision: 10, scale: 6
    t.decimal  "long",          precision: 10, scale: 6
    t.boolean  "geocoded"
    t.string   "phone"
    t.datetime "occurred_at"
    t.string   "when_happened"
  end

end
