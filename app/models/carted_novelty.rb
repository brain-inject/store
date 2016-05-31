class CartedNovelty < ActiveRecord::Base

  validates :user_id, presence: true
  validates :novelty_id, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }

    belongs_to :order
    belongs_to :novelty
    belongs_to :user

    def subtotal
      price * quantity
    end

    def price
      novelty.price
    end

    def name
      novelty.name
    end
end
