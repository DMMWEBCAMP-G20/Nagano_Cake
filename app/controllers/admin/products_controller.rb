class Admin::ProductsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @product = Product.new
    @genres = Genre.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
    else
      @products = Product.all.order(id: :desc)
      render :index
    end
  end

  def index
    @products = Product.page(params[:page]).per(10)
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    @genres = Genre.all
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to admin_product_path(@product)
    else
      render :edit
    end
  end

  def search
    @member_or_product = params[:option]
    if @member_or_product == "1"
      @members = Member.search(params[:search], @member_or_product)
    else
      @products = Product.search(params[:search], @member_or_product)
    end
  end

  private
    def product_params
        params.require(:product).permit(:image, :name, :explanatory, :genre_id, :price, :is_sales_status)
    end
end
