class Actor < ActiveRecord::Base
	has_many :movies, through: :appearances
	has_many :appearances, dependent: :destroy
	
	validates :first_name, :last_name, presence:true
	
	def name
		return first_name + " " + last_name
	end
end
