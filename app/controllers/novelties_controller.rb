class NoveltiesController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @test_token = ENV['test_api_token']
    @test_secret = ENV['test_api_secret']

    @novelties = Novelty.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    discount_value = params[:discount]
    category_type = params[:category]

    if category_type
      @novelties = Category.find_by(name: category_type).novelties
    end

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
    @novelty = Novelty.new
  end

  def create
    @novelty = Novelty.new(
      name: params[:name],
      description: params[:description],
      price: params[:price]
      )

    if @novelty.save
      Image.create(url: params[:image], novelty_id: @novelty.id) if params[:image] != ""
      
      flash[:success] = "Novelty Created"
      redirect_to "/novelties/#{@novelty.id}"
    else
      render :new
    end
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

    if @novelty.update(
                      name: params[:name],
                      description: params[:description],
                      price: params[:price]
                      )

      flash[:success] = "Novelty Updated"
      redirect_to "/novelties/#{@novelty.id}"
    else
      render :edit
    end
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











