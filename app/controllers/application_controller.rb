class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:reading_first_name, :reading_last_name, :first_name, :last_name, :postal_code, :address, :phone_number])
  end
end
