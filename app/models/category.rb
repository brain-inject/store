class Category < ActiveRecord::Base
  has_many :categorized_novelties
  has_many :novelties, through: :categorized_novelties
end
