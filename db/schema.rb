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

ActiveRecord::Schema.define(version: 2022_10_11_213522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "direccion", null: false
    t.string "oficina"
    t.string "rut"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "comuna"
    t.string "region"
  end

  create_table "microasalto_encuesta_inicials", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "pregunta1"
    t.boolean "pregunta2"
    t.boolean "pregunta3"
    t.boolean "pregunta4"
    t.boolean "pregunta5"
    t.boolean "pregunta6"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_microasalto_encuesta_inicials_on_user_id"
  end

  create_table "microinsulto_encuesta_finals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "pregunta1"
    t.boolean "pregunta2"
    t.boolean "pregunta3"
    t.boolean "pregunta4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_microinsulto_encuesta_finals_on_user_id"
  end

  create_table "microinsulto_encuesta_inicials", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "pregunta1"
    t.boolean "pregunta2"
    t.boolean "pregunta3"
    t.boolean "pregunta4"
    t.boolean "pregunta5"
    t.boolean "pregunta6"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_microinsulto_encuesta_inicials_on_user_id"
  end

  create_table "microinvalidacion_encuesta_finals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "pregunta1"
    t.boolean "pregunta2"
    t.boolean "pregunta3"
    t.boolean "pregunta4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_microinvalidacion_encuesta_finals_on_user_id"
  end

  create_table "microinvalidacion_encuesta_inicials", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "pregunta1"
    t.boolean "pregunta2"
    t.boolean "pregunta3"
    t.boolean "pregunta4"
    t.boolean "pregunta5"
    t.boolean "pregunta6"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_microinvalidacion_encuesta_inicials_on_user_id"
  end

  create_table "simulations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "tipo", null: false
    t.string "perspectiva", null: false
    t.boolean "realizada", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "decisiones", default: "-1"
    t.index ["user_id"], name: "index_simulations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.boolean "encargado", default: false
    t.boolean "admin", default: false
    t.bigint "empresa_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["empresa_id"], name: "index_users_on_empresa_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "users", "empresas"
end
