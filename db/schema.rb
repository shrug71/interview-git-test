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

ActiveRecord::Schema[8.1].define(version: 2026_09_29_060531) do
  create_table "recharges", force: :cascade do |t|
    t.string "mobile_no", null: false
    t.string "operator_name", null: false
    t.string "state", null: false
    t.decimal "amount", null: false
    t.string "status", default: "pending", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "recharge_id", null: false
    t.string "transaction_id", null: false
    t.decimal "amount", null: false
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recharge_id"], name: "index_transactions_on_recharge_id"
    t.index ["transaction_id"], name: "index_transactions_on_transaction_id", unique: true
  end

  add_foreign_key "transactions", "recharges"
end
