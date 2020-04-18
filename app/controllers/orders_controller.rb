class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def verification
    @cart_items = current_member.cart_items
  end

  def confirm
    redirect_to thanks_path
  end

  def thanks
  end
end