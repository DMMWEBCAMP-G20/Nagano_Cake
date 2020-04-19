class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    @cart_items = current_member.cart_items
    address = params[:order][:delivery].to_i
    id = params[:order][:sub_delivery].to_i
    if id > 0
      delivery = current_member.deliveries.find(id)
    end
    if address == 1
      @order.postal_code = current_member.postal_code
      @order.address = current_member.address
      @order.name = current_member.first_name
    elsif address == 2
      @order.postal_code = delivery.postal_code
      @order.address = delivery.address
      @order.name = delivery.name
    elsif address == 3
    end
  end

  def create
    order = Order.new(order_params)
    order.member_id = current_member.id
    order.postage = params[:postage].to_i
    order.total_price = params[:total_price]
    order.order_status = params[:order_status].to_i
    order.save

    current_member.cart_items.each do |cart_item|
      order_product = OrderProduct.new
      order_product.name = cart_item.product.name
      order_product.price = cart_item.product.price
      order_product.quantity = cart_item.quantity
      order_product.product_id = cart_item.product.id
      order_product.order_id = order.id
      order_product.production_status = 1
      order_product.save!
    end
    current_member.cart_items.destroy_all
    redirect_to thanks_path
  end

  def thanks
  end

  private
    def order_params
      params.require(:order).permit(:member_id,:postal_code, :address, :name, :pay_type, :postage, :total_price, :order_status)
    end
end