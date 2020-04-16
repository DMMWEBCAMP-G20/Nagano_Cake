class Admin::MembersController < ApplicationController
	# before_action :authenticate_member!
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.member_id = current_member.id
    if @member.update(member_params)
      redirect_to admin_members_show_path(@member.id)
    else
      render :edit
    end
  end

  private
    def member_params
      params.require(:admin).permit(:name, :first_name, :last_name, :reading_first_name, :reading_last_name, :postal_code, :address, :phone_number, :email)
    end
end