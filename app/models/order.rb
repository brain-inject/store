class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :novelty

  def calculate_subtotal(product_price)
    self.subtotal = product_price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_figures(product_price)
    calculate_subtotal(product_price)
    calculate_tax
    calculate_total
  end
end
