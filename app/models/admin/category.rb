class Admin::Category < ApplicationRecord
	validates :name, presence: true
end
