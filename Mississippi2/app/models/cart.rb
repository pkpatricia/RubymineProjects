class Cart < ActiveRecord::Base
	validates :description, presence:true
end
