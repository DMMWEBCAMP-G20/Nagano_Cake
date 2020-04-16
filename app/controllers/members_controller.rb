class MembersController < ApplicationController

	def show
		@members = Member.find(params[:id])
	end

	def edit
	end

end
