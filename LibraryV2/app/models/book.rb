class Book < ActiveRecord::Base

  has_many :authors, through: :publications
  has_many :publications, dependent: :destroy

  validates :title, presence: true
  validates :pagecount, numericality: {greater_than: 0}
end
