class MembersController < ApplicationController
before_action :authenticate_member!
before_action :correct_member

	def show
		@member = Member.find(params[:id])
	end

	def edit
		@member = Member.find(params[:id])
	end

	def update
		@member = Member.find(params[:id])
		@member.update(member_params)
    redirect_to member_path(@member.id)
	end

	private

	def member_params
	 params.require(:member).permit(:first_name, :last_name, :reading_first_name, :reading_last_name, :postal_code, :address, :phone_number, :email,)
	end

	def correct_member
 	 @member = Member.find(params[:id])
	if current_member == member
	else
   redirect_to member_path(current_member.id)
	end
	end

end
