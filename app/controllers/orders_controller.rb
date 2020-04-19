class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    @order_product = OrderProduct.new
    @cart_items = current_member.cart_items
  end

  def create
    order = Order.new(order_params)
    order.member_id = current_member.id
    order.postage = params[:postage].to_i
    order.total_price = params[:total_price].to_i
    order.order_status = params[:order_status].to_i
    order.save
    redirect_to thanks_path
  end


  def thanks
  end

  def order_params
    params.require(:order).permit(:member_id,:postal_code, :address, :name, :pay_type, :postage, :total_price, :order_status)
  end
end