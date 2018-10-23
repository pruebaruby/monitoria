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

ActiveRecord::Schema.define(version: 2018_10_23_030755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.string "password"
    t.string "carrera"
    t.string "promedio"
    t.integer "codigo"
    t.integer "matricula"
    t.boolean "monitor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materia", force: :cascade do |t|
    t.string "nombre"
    t.string "codigo"
    t.string "carrera"
    t.integer "creditos"
    t.boolean "monitor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
