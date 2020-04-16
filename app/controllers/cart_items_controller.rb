class CartItemsController < ApplicationController
  def create
    product = Product.find(params[:id])
    if @cart_item.blank?
      @cart_item = cart_items.new(product_id: product.id)
    end

    def show
      @cart_item = CartItem.find(params[:id])
    end
end
