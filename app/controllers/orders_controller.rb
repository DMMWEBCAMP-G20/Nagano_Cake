class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
  end

  def verification
    @cart_items = current_member.cart_items
    @order_item = OrderItem.new
  end

  def confirm
    redirect_to thanks_path
  end

  def thanks
  end
end