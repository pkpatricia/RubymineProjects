class Book < ActiveRecord::Base
	has_many :authors, through: :publications
	has_many :publications, dependent: :destroy
	has_many :carts, through: :items
	has_many :items, dependent: :destroy
	validates :title, presence:true
	validates :page_count, numericality:{greater_than:0, less_than:601}
	validates :price, numericality:{greater_than_or_equal_to:0.01, less_than_or_equal_to:500.00}
end
