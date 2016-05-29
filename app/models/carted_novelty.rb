class CartedNovelty < ActiveRecord::Base
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
