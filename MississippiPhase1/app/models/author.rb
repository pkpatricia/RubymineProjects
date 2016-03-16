class Author < ActiveRecord::Base
	has_many :books, through: :publications
	has_many :publications, dependent: :destroy
	
	validates :first_name, :last_name, presence: true

	def name
		return first_name + " " + last_name
	end
end
