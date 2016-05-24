class Novelty < ActiveRecord::Base

  belongs_to :supplier
  has_many :images
  has_many :orders

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
