class Depot < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string   :name
      t.string   :description
      t.integer  :quantity
      t.integer  :unit_price
      t.integer  :total_price
      t.string   :rotation_number
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :sales do |t|
      t.integer  :item
      t.integer  :client
      t.integer  :quantity
      t.float    :tva
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :supplies do |t|
      t.integer  :supplier
      t.integer  :order
      t.integer  :item
      t.string   :description
      t.integer  :quantity
      t.integer  :unit_price
      t.integer  :total_price
      t.string   :lot_number
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :payments do |t|
      t.integer  :order
      t.string   :payment_code
      t.integer  :supplier
      t.integer  :amount
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :client_payments do |t|
      t.integer  :client
      t.integer  :sale
      t.integer  :payment_mode
      t.integer  :amount
      t.integer  :account_type
      t.integer  :total_amount
      t.integer  :balance
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :orders do |t|
      t.integer  :supplier
      t.string   :description
      t.integer  :quantity
      t.integer  :item
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :suppliers do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :telephone
      t.string   :email
      t.string   :postal_address
      t.string   :address
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :clients do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :telephone
      t.string   :email
      t.string   :postal_address
      t.string   :address
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :items
    drop_table :sales
    drop_table :supplies
    drop_table :payments
    drop_table :client_payments
    drop_table :orders
    drop_table :suppliers
    drop_table :clients
  end
end
