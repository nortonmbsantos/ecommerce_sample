class AddCategoryToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :admin_products, :admin_category, foreign_key: true
  end
end
