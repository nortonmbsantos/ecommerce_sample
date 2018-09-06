class AddPhotosToAdminProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_products, :photos, :json
  end
end
