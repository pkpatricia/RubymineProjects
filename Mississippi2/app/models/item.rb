class Item < ActiveRecord::Base
	belongs_to :book
	belongs_to :cart
	
	validates :quantity, numericality:{greater_than:0}
	
	def extended_price
		return (quantity * book.price)
  end
end
