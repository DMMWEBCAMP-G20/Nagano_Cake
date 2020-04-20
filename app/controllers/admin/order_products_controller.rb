class Admin::OrderProductsController < ApplicationController

  def update
  	@order_product = OrderProduct.find(params[:id])
  	@order_product.update(order_product_params)
    order = @order_product.order
    if @order_product.production_status == "production"
        order.order_status = "production"
        order.save
    end
    if @order_product.production_status == "production_completed"
        order.order_status = "preparing_shipping"
        order.save
    end
    redirect_to admin_order_path(@order_product.order.id)
  end
  private
    def order_product_params
      params.require(:order_product).permit(:product_id, :order_id, :name, :price, :quantity, :production_status, :created_at, :phone_number, :order_status, :production_status)
    end
end
