# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110513161633) do

  create_table "client_payments", :force => true do |t|
    t.integer  "client"
    t.integer  "sale"
    t.integer  "payment_mode"
    t.integer  "amount"
    t.integer  "account_type"
    t.integer  "total_amount"
    t.integer  "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "telephone"
    t.string   "email"
    t.string   "postal_address"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "quantity"
    t.integer  "unit_price"
    t.integer  "total_price"
    t.string   "rotation_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "supplier"
    t.string   "description"
    t.integer  "quantity"
    t.integer  "item"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.integer  "order"
    t.string   "payment_code"
    t.integer  "supplier"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", :force => true do |t|
    t.integer  "item"
    t.integer  "client"
    t.integer  "quantity"
    t.float    "tva"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "telephone"
    t.string   "email"
    t.string   "postal_address"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supplies", :force => true do |t|
    t.integer  "supplier"
    t.integer  "order"
    t.integer  "item"
    t.string   "description"
    t.integer  "quantity"
    t.integer  "unit_price"
    t.integer  "total_price"
    t.string   "lot_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
