class ShoppingCart < ActiveRecord::Base
	has_many :books, through: :items
	has_many :items, dependent: :destroy
end
