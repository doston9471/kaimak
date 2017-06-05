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

ActiveRecord::Schema.define(version: 20161210085008) do

  create_table "foods", force: :cascade do |t|
    t.string "date"
    t.string "firstCourse"
    t.string "secondCourse"
    t.string "sideDish"
    t.string "dessert"
    t.string "bread"
    t.string "firstCourseCalorie"
    t.string "secondCourseCalorie"
    t.string "sideDishCalorie"
    t.string "dessertCalorie"
    t.string "breadCalorie"
    t.string "total"
  end

end
