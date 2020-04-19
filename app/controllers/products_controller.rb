class ProductsController < ApplicationController
  def index
      @genres  = Genre.all
      p params[:i].class
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
end
