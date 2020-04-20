class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
before_action :authenticate_member!, only: [:show,:edit]

	def after_sign_in_path_for(resource)
  	case resource
  	when Admin
    	admin_top_path
    when Member
      root_path
    end

  def after_sign_out_path_for(resource)
    p resource
    case resource
    when :admin
      new_admin_session_path
    when :member
      root_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:reading_first_name, :reading_last_name, :first_name, :last_name, :postal_code, :address, :phone_number])
  end
end
