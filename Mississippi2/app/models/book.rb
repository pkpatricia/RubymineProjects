class Book < ActiveRecord::Base
	validates :title, presence:true
	validates :page_count, numericality:{greater_than:0, less_than:601}
	validates :price, numericality:{greater_than_or_equal_to:0.01, less_than_or_equal_to:500.00}
end
