class MembersController < ApplicationController

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

	def confirmation
	end

  def withdraw
  	@member = Member.find_by(id: current_member.id)
  	if @member.is_active == 'enable'
  		 @member.is_active = 'disable'
  	else
       @member.is_active = 'enable'
    end
  	@member.save
  	reset_session
  	redirect_to	root_path
  	# redirect_to :controller => "members/sessions", :action =>"destroy", '_method' =>:delete
  end


	private

	def member_params
	 params.require(:member).permit(:first_name, :last_name, :reading_first_name, :reading_last_name, :postal_code, :address, :phone_number, :email, :is_active)
	end

	# def correct_member
 # 	 @member = Member.find(params[:id])
	# if current_member == @member
	# else
 #   redirect_to member_path(current_member.id)
	# end
	# end

end
