class Admin::ProductsController < ApplicationController
  def new
  	@product = Product.new
  	@genres = Genre.all
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to admin_product_path(@product)
  	else
  		@products = Product.all
  		render :index
  	end
  end

  def index
  	@products = Product.all
  end

  def show
  	@products = Product.find(params[:id])
  end

  def edit
  	@products = Product.find(params[:id])
  end

    def update
  	@product = Product.find(params[:id])
  	if @product.update(product_params)
  	 redirect_to product_path(@puroduct.id)
    else
      render :edit
    end
  end

   private
    def product_params
        params.require(:product).permit(:image, :name, :explanatory, :genre_id, :price, :is_sales_status)
    end
end
