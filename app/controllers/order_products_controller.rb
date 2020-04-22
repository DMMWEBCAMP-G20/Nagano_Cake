class OrderProductsController < ApplicationController
  before_action :authenticate_member!

	def index
		@order_products = OrderProduct.all
	end

  def show
    @order_product = OrderProduct.find(params[:id])
  end
  private
    def order_product_params
      params.require(:order_product).permit(:product_id, :order_id, :name, :price, :quantity, :production_status, :created_at, :phone_number, :order_status, :production_status)
    end
end
