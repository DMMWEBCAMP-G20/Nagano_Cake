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
   
    @cart_item = CartItem.new
  end
  #     private
  # def genre_params
  #   params.require(:product).permit(:i)
  # end
end
