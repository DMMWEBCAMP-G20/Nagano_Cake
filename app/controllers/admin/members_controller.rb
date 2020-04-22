class Admin::MembersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @members = Member.page(params[:page]).per(10)
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to admin_member_path(@member.id)
    else
      render :edit
    end
  end

  private
    def member_params
      params.require(:member).permit(:name, :first_name, :last_name, :reading_first_name, :reading_last_name, :postal_code, :address, :phone_number, :email, :is_active)
    end
end