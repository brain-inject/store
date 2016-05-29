class CartedNoveltiesController < ApplicationController
  
  before_action :authenticate_user!

  def index
    if user_signed_in? && current_user.carted_items.count > 0
      @cart = current_user.carted_items
    else
      flash[:info] = "Why don't you add some items to your cart"
      redirect_to '/'
    end
  end

  def create
    @carted_novelty = CartedNovelty.create(
      novelty_id: params[:novelty_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted"
      )

    flash[:success] = "Item added to cart"
    redirect_to "/cart"
  end

  def destroy
    @carted_novelty = CartedNovelty.find(params[:id])
    @carted_novelty.update(status: "removed")

    flash[:success] = "Removed Item"
    redirect_to '/cart'
  end
end




