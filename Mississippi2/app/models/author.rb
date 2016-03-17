class Author < ActiveRecord::Base
	validates :first_name, :last_name, presence: true

  def name
    return last_name + ", " + first_name
  end
end
