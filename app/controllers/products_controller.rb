class ProductsController < ApplicationController
  
  def index
  	@genres  = Genre.all
  	if params[:i]
  		@products = Product.where(genre_id: params[:i])
  	else
  		@products = Product.all
  	end
  end

  def show
  end

  def edit
  end

end
