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

ActiveRecord::Schema.define(version: 20170118181935) do

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "cedula"
    t.integer  "telefono"
    t.string   "correo"
    t.string   "barrio"
    t.string   "ciudad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "tpersona_id"
    t.integer  "carrera_id"
    t.index ["carrera_id"], name: "index_alumnos_on_carrera_id"
    t.index ["tpersona_id"], name: "index_alumnos_on_tpersona_id"
  end

  create_table "carreras", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "cedula"
    t.integer  "telefono"
    t.string   "correo"
    t.string   "barrio"
    t.string   "ciudad"
    t.integer  "tpersona_id_id"
    t.integer  "carrera_id_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["carrera_id_id"], name: "index_personas_on_carrera_id_id"
    t.index ["tpersona_id_id"], name: "index_personas_on_tpersona_id_id"
  end

  create_table "tpersonas", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
