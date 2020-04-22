class ProductsController < ApplicationController
  def index
      @genres  = Genre.all
      p params[:i].class
      if params[:i]
        products = Product.where(genre_id: params[:i])
        @products = products.page(params[:page]).per(5)
      else
        @products = Product.page(params[:page]).per(5)
      end
  end

  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
  end
end
