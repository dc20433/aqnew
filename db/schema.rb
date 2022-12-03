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

ActiveRecord::Schema[7.0].define(version: 2022_12_02_211528) do
  create_table "charts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "tDate"
    t.text "soap"
    t.string "acuList"
    t.string "cMedList"
    t.string "cForList"
    t.string "oTreats"
    t.bigint "regi_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regi_id"], name: "index_charts_on_regi_id"
  end

  create_table "patients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "vDate"
    t.string "mStat"
    t.decimal "height", precision: 3, scale: 1
    t.decimal "weight", precision: 4, scale: 1
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "cell"
    t.string "home"
    t.string "work"
    t.string "email"
    t.string "referred"
    t.string "com1"
    t.string "com2"
    t.string "com3"
    t.date "dOnset"
    t.integer "painScale"
    t.integer "dLost"
    t.integer "dRestd"
    t.string "cOnset"
    t.string "better"
    t.string "worse"
    t.string "oDrs"
    t.date "oDrsWhen"
    t.string "pcpNm"
    t.string "hosp"
    t.date "hWhen"
    t.string "diagGiven"
    t.string "diagWhere"
    t.string "aqB4"
    t.string "aqrist"
    t.string "aqWhere"
    t.string "diList"
    t.string "oDis"
    t.string "injSurg"
    t.string "medTaken"
    t.string "alcohol", limit: 225
    t.string "tobacco", limit: 225
    t.date "lastPrd"
    t.string "preg"
    t.integer "pregWks"
    t.bigint "regi_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["regi_id"], name: "index_patients_on_regi_id"
  end

  create_table "regis", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "lastNm"
    t.string "firstNm"
    t.string "init"
    t.string "gender"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "contactN"
    t.string "userNm"
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "charts", "regis"
  add_foreign_key "patients", "regis"
end
