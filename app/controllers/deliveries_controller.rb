class DeliveriesController < ApplicationController
before_action :authenticate_member!

  def create
  delivery = Delivery.new(delivery_params)
  delivery.member_id = current_member.id
  delivery.save
  redirect_to deliveries_path
  end

  def index
  @deliveries = Delivery.all
  @delivery = Delivery.new
  end

  def edit
  @delivery = Delivery.find(params[:id])
  end

  def update
  delivery= Delivery.find(params[:id])
  delivery.update(delivery_params)
  redirect_to deliveries_path
  end

  def destroy
  @delivery= Delivery.find(params[:id])
  @delivery.destroy
  redirect_to deliveries_path
  end

  private
  def delivery_params
   params.require(:delivery).permit(:postal_code, :address, :name)
  end
end

