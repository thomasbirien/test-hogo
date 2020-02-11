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

ActiveRecord::Schema.define(version: 2020_02_11_164052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "insurance_agricultures", force: :cascade do |t|
    t.text "kind_of_cultures", default: [], array: true
    t.boolean "drought_zone", default: false
  end

  create_table "insurance_automotives", force: :cascade do |t|
    t.integer "driver_licence_points"
    t.string "car_model"
    t.string "registration_number"
  end

  create_table "insurance_immovables", force: :cascade do |t|
    t.integer "building_height"
    t.integer "number_of_floors"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "email_buyer"
    t.string "social_reason"
    t.string "siret"
    t.string "siren"
    t.string "naf"
    t.integer "max_price"
    t.integer "annual_revenue"
    t.string "tel"
    t.text "description"
    t.string "state"
  end

end
