class Category < ActiveRecord::Base

  validates :name, uniqueness: true
  validates :name, presence: true

  has_many :categorized_novelties
  has_many :novelties, through: :categorized_novelties
end
