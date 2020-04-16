class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new
    @products = Product.all
  end
end
