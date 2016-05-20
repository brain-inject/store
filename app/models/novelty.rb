class Novelty < ActiveRecord::Base

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
end
