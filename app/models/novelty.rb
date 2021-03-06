class Novelty < ActiveRecord::Base

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :description, presence: true
  validates :description, length: { maximum: 500 }

  validates :price, numericality: true
  validates :price, presence: true

  belongs_to :supplier
  has_many :categorized_novelties
  has_many :categories, through: :categorized_novelties
  has_many :images

  has_many :carted_novelties
  has_many :orders, through: :carted_novelties

  TAXRATE = 0.09

  def sale_message
    if price.to_i > 10
      "On Sale"
    else
      "Discount Item!"
    end
  end

  def tax
    price.to_i * TAXRATE
  end

  def total
    tax + price.to_i
  end

  def image_preview_url
    images.first.url
  end
end
