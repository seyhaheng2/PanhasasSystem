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

ActiveRecord::Schema.define(version: 20141116111118) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "education_backgrounds", force: true do |t|
    t.text     "high_school"
    t.text     "english_program"
    t.text     "degree_program"
    t.text     "university"
    t.text     "graduate_school"
    t.integer  "type_of_degree_id"
    t.string   "desired_major"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "education_backgrounds", ["student_id"], name: "index_education_backgrounds_on_student_id", using: :btree
  add_index "education_backgrounds", ["type_of_degree_id"], name: "index_education_backgrounds_on_type_of_degree_id", using: :btree

  create_table "genders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marital_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name_khmer"
    t.string   "name_english"
    t.integer  "gender_id"
    t.integer  "marital_status_id"
    t.date     "dob"
    t.string   "pob"
    t.string   "nationality"
    t.text     "home_address"
    t.string   "telephone"
    t.string   "email"
    t.string   "work_place"
    t.string   "position"
    t.string   "parent_name"
    t.string   "spouse_name"
    t.string   "emergency_contact"
    t.string   "emergency_relationship"
    t.string   "emergency_address"
    t.string   "emergency_telephone"
    t.integer  "education_background_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["education_background_id"], name: "index_students_on_education_background_id", using: :btree
  add_index "students", ["gender_id"], name: "index_students_on_gender_id", using: :btree
  add_index "students", ["marital_status_id"], name: "index_students_on_marital_status_id", using: :btree

  create_table "type_of_degrees", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
