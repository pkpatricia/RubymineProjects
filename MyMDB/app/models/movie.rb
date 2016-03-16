class Movie < ActiveRecord::Base
	has_many :actors, through: :appearances
	has_many :appearances, dependent: :destroy
	
	validates :title, presence:true
	validates :running_time, numericality:{greater_than:0, less_than_or_equal_to:480}
end
