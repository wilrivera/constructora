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

ActiveRecord::Schema.define(version: 2020_09_24_011923) do

  create_table "alumnos", force: :cascade do |t|
    t.string "nombres"
    t.string "dni"
    t.string "email"
    t.integer "edad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bloqueos", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "dni"
    t.integer "proyecto"
    t.integer "departamento"
    t.string "voucher"
    t.string "tipo"
    t.integer "monto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cita", force: :cascade do |t|
    t.string "dni"
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.integer "telefono"
    t.date "fechacita"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "citations", force: :cascade do |t|
    t.string "dni"
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "telefono"
    t.date "fechacita"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "mensaje"
    t.string "agente"
  end

  create_table "contactos", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "correo"
    t.text "mensaje"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.integer "numdpto"
    t.integer "piso"
    t.text "descripcion"
    t.decimal "precio"
    t.integer "area"
    t.integer "numdormitorio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "proyecto_id"
    t.string "foto"
  end

  create_table "detalle_departamentos", force: :cascade do |t|
    t.integer "supTotal"
    t.integer "supTechada"
    t.integer "banios"
    t.integer "estacionamiento"
    t.integer "banioServicio"
    t.boolean "closet"
    t.boolean "recepcion"
    t.boolean "condominio"
    t.boolean "centroComercial"
    t.boolean "cercaColegio"
    t.boolean "parque"
    t.boolean "intercomunicador"
    t.integer "ascensores"
    t.integer "ambientes"
    t.string "descambientes"
    t.string "ubicacion"
    t.integer "departamento_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fotos"
    t.index ["departamento_id"], name: "index_detalle_departamentos_on_departamento_id"
  end

  create_table "perfils", force: :cascade do |t|
    t.string "name"
  end

  create_table "proforma_details", force: :cascade do |t|
    t.string "dpto"
    t.float "base"
    t.float "area"
    t.integer "descuento"
    t.float "total"
    t.integer "proyecto_id"
    t.integer "proforma_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["proforma_id"], name: "index_proforma_details_on_proforma_id"
    t.index ["proyecto_id"], name: "index_proforma_details_on_proyecto_id"
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
    t.string "distrito"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "dni"
    t.string "nombres"
    t.string "apellidos"
    t.string "perfil"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password"
  end

  create_table "venta", force: :cascade do |t|
    t.string "cliente"
    t.string "formaPago"
    t.string "dpto"
    t.decimal "precio"
    t.string "banco"
    t.string "nroCtaOrigen"
    t.decimal "montoAbonado"
    t.decimal "montoDscto"
    t.decimal "montoPagar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "detalle_departamentos", "departamentos"
  add_foreign_key "proforma_details", "proformas"
  add_foreign_key "proforma_details", "proyectos"
end
