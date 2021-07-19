# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_18_150911) do

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "telefone"
    t.string "email"
    t.string "endereco"
    t.string "estado_civil"
    t.integer "quantidade_filhos"
    t.text "medicamentos"
    t.string "e_fumante"
    t.string "ingere_alcool"
    t.integer "psicologo_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "historico_doencas"
    t.index ["psicologo_id"], name: "index_pacientes_on_psicologo_id"
    t.index ["user_id"], name: "index_pacientes_on_user_id"
  end

  create_table "psicologos", force: :cascade do |t|
    t.string "crp"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_psicologos_on_user_id"
  end

  create_table "sessaos", force: :cascade do |t|
    t.date "data"
    t.time "hora"
    t.integer "user_id", null: false
    t.integer "paciente_id", null: false
    t.integer "psicologo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["paciente_id"], name: "index_sessaos_on_paciente_id"
    t.index ["psicologo_id"], name: "index_sessaos_on_psicologo_id"
    t.index ["user_id"], name: "index_sessaos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "roles_mask"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pacientes", "psicologos"
  add_foreign_key "pacientes", "users"
  add_foreign_key "psicologos", "users"
  add_foreign_key "sessaos", "pacientes"
  add_foreign_key "sessaos", "psicologos"
  add_foreign_key "sessaos", "users"
end
