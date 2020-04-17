class CartItemsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    cart_item = CartItem.find_by(product_id: product.id)
    if cart_item.blank?
      cart_item = CartItem.new
      cart_item.member_id = current_member.id
      cart_item.product_id = product.id
      cart_item.quantity = params[:cart_item][:quantity].to_i
    else
      cart_item.quantity += params[:cart_item][:quantity].to_i
    end
    cart_item.save
    redirect_to cart_items_path
  end

  def index
    @cart_items = current_member.cart_items
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.update(quantity: params[:cart_item][:quantity].to_i)
    redirect_to cart_items_path
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_items_path
  end

  def empty
    cart_items = current_member.cart_items
    cart_items.destroy_all
    redirect_to cart_items_path
  end
end
