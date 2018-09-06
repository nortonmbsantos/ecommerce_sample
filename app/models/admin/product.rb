class Admin::Product < ApplicationRecord
  mount_uploaders :photos, PhotosUploader
  validates :name, :quantity, :price, :admin_category_id, presence: true
  validates :quantity, :price, numericality: { greater_than_or_equal_to: 0 }
  
  def category_name
    Admin::Category.find(admin_category_id).name
  end
end
