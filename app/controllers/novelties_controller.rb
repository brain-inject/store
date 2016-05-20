class NoveltiesController < ApplicationController
  def index

    @novelties = Novelty.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_value = params[:discount]

    if discount_value
      @novelties = @novelties.where("price < ?", discount_value)
    end

    if sort_order && sort_attribute
      @novelties = @novelties.order(sort_attribute => sort_order)
    elsif sort_attribute
      @novelties = @novelties.order(sort_attribute)
    end
  end

  def new
  end

  def create
    @novelty = Novelty.create(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price]
      )

    flash[:success] = "Novelty Created"
    redirect_to "/novelties/#{@novelty.id}"
  end

  def show
    @novelty = Novelty.find_by(id: params[:id])

    @tax = @novelty.tax
    @total = @novelty.total
  end

  def edit
    @novelty = Novelty.find_by(id: params[:id])
  end

  def update
    @novelty = Novelty.find_by(id: params[:id])
    @novelty.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      price: params[:price]
      )

    flash[:success] = "Novelty Updated"
    redirect_to "/novelties/#{@novelty.id}"
  end

  def destroy
    @novelty = Novelty.find_by(id: params[:id])
    @novelty.destroy

    flash[:warning] = "Novelty Created"
    redirect_to "/"
  end

  def random
    novelty = Novelty.all.sample
    redirect_to "/novelties/#{novelty.id}"
  end
end

