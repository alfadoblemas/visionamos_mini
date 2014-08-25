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

ActiveRecord::Schema.define(version: 20140823114158) do

  create_table "agencias", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "nit"
    t.string   "telefono"
    t.integer  "estado"
    t.string   "nombre_director"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.integer  "tipo_identificacion"
    t.string   "nro_identificacion"
    t.integer  "tipo_cliente"
    t.integer  "agencia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["agencia_id"], name: "index_clientes_on_agencia_id"

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "tipo_identificacion"
    t.string   "nro_identificacion"
    t.string   "email"
    t.integer  "tipo_usuario"
    t.integer  "agencia_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["agencia_id"], name: "index_usuarios_on_agencia_id"

end
