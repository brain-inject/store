class OrdersController < ApplicationController
  def create

    @order = Order.new(
      quantity: params[:quantity],
      novelty_id: params[:novelty_id],
      user_id: current_user.id,
      )
    
    @order.calculate_figures(@order.novelty.price)
    @order.save

    flash[:success] = "Order Created"
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    @novelty = Novelty.find(@order.novelty_id)
  end
end
