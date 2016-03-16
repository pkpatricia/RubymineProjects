class Author < ActiveRecord::Base

  has_many :books, through: :publications
  has_many :publications, dependent: :destroy

  validates :firstname, :lastname, presence: true

  def name
    return lastname + ", " + firstname
  end
end
