class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :product
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.boolean :paid, default: false
      t.integer :total
      t.string :transaction_number

      t.timestamps null: false
    end

    add_foreign_key :orders, :products

  end
end
