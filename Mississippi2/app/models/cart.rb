class Cart < ActiveRecord::Base
	has_many :books, through: :items
	has_many :items, dependent: :destroy
	belongs_to :user
	validates :description, presence:true
end
