class Admin::OrderProductsController < ApplicationController

	def index
		@order_products = OrderProduct.all
	end

  def show
  	@order_product = OrderProduct.find(params[:id])
  end

  def edit
  	@order_product = OrderProduct.find(params[:id])
  end

  def update
  	@order_product = OrderProduct.find(params[:id])
  	if @order_product.update(order_product_params)
      redirect_to admin_order_products_path(@order_product.id)
    else
      render :show
    end
  end
  private
    def order_product_params
      params.require(:order_product).permit(:product_id, :order_id, :name, :price, :quantity, :production_status, :created_at, :phone_number, :order_status, :production_status)
    end
end
