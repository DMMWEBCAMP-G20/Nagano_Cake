class MembersController < ApplicationController

	def show
		@member = Member.find(params[:id])
	end

	def edit
		@member = Member.find(params[:id])
	end

	def hide
		@member = Member.find(params[:id])
	end

	def update
		@member = Member.find(params[:id])
		@member.update(member_params)
    redirect_to member_path(@member.id)
	end

	private

	def member_params
	 params.require(:member).permit(:first_name, :last_name, :reading_first_name, :reading_last_name, :phone_number)
	end

end
