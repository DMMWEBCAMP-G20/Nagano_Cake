class ProductsController < ApplicationController
  
  def index
    @genres  = Genre.all
    if params[:i]
      @products = Product.where(genre_id: params[:i])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
  end

  def edit
  end
end
