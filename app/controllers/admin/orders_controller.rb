class Admin::OrdersController < ApplicationController
	def top
	end

  def index
    @orders = Order.all
    @order_products = OrderProduct.all
  end

  def show
    @order = Order.find(params[:id])
    @order_products = @order.order_products
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    if @order.order_status == "payment_confirmation"
      @order.order_products.each do |order_product|
        order_product.production_status = "waiting_production"
        order_product.save
      end
    elsif @order.order_status == "production"
      @order.order_products.each do |order_product|
        order_product.production_status = "production"
        order_product.save
      end
    elsif @order.order_status == "preparing_shipping"
      @order.order_products.each do |order_product|
        order_product.production_status = "production_completed"
        order_product.save
      end
    else @order.order_status == "shipped"
      @order.order_products.each do |order_product|
        order_product.production_status = "production_completed"
        order_product.save
      end
    end
    redirect_to admin_order_path(@order)

  end

  private
    def order_params
      params.require(:order).permit(:name, :price, :quantity, :phone_number, :order_status, :production_status)
    end
end
