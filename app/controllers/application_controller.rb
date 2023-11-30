class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :update_allowed_parameters, if: :devise_controller?
  
    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) do |u|
        u.permit(:name, :email, :password, :password_confirmation)
      end
      devise_parameter_sanitizer.permit(:account_update) do |u|
        u.permit(:name, :email, :password, :current_password)
      end
    end
  
    def authenticate_user!
      unless user_signed_in? || (controller_name == 'splash' && action_name == 'index')
        super
      end
    end

    def after_sign_in_path_for(resource_or_scope)
        stored_location_for(resource_or_scope) || groups_path
      end
  end
  