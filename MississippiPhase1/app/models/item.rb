class Item < ActiveRecord::Base
	belongs_to :shopping_cart
	belongs_to :book
end
