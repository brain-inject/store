class OrdersController < ApplicationController

  before_action :authenticate_user!

  def create

    @order = Order.create(user_id: current_user.id)
    ordered_items = current_user.carted_items

    ordered_items.each do |ordered_item|
      ordered_item.update(status: 'purchased', order_id: @order.id)
    end

    @order.calculate_figures(@order.carted_novelties)
    @order.save

    session[:cart_count] = nil
    flash[:success] = "Order Created"
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
    @ordered_novelties = @order.carted_novelties
    unless user_signed_in? && current_user.id == @order.user.id
      redirect_to '/'
    end
  end
end
