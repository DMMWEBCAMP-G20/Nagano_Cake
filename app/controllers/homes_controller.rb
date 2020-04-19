class HomesController < ApplicationController
	PER = 3
  def top
  	@products = Product.all.page(params[:page]).per(PER)
  end

  def about
  end
end
