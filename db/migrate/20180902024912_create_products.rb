class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_products do |t|
      t.string :name
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
