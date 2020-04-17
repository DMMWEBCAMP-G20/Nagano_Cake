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

end
