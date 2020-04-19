class Admin::OrdersController < ApplicationController
	def top

	end

  def index
    @orders = Order.all
    @order_products = OrderProduct.all
  end

  def show
    @order = Order.find(params[:id])
    @order_products = OrderProduct.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to admin_orders_path(@order.id)
    else
      render :show
    end
  end

  private
    def order_params
      params.require(:order).permit(:name, :price, :quantity, :phone_number, :order_status, :production_status)
    end
end
