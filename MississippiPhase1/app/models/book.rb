class Book < ActiveRecord::Base
	has_many :authors, through: :publications
	has_many :publications, dependent: :destroy
	has_many :shopping_carts, through: :items
	has_many :items, dependent: :destroy
	
	validates :title, presence: true
  validates :page_count, numericality: {greater_than: 0}
end
