class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_novelties
  has_many :novelties, through: :carted_novelties

  def calculate_subtotal(cart_items)
    self.subtotal = 0

    cart_items.each do |cart_item|
      self.subtotal += cart_item.subtotal
    end
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
