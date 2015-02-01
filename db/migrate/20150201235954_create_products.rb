class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :page
      t.string :title
      t.string :short_description
      t.text :long_description
      t.text :options
      t.integer :price
    end
    add_foreign_key :products, :pages
  end
end
