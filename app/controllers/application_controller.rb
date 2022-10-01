class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  include Pundit::Authorization

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
  end

  def after_sign_in_path_for(resource)
    if current_user.admin?
      admin_root_path
    else
      users_root_path
    end
  end

  def after_sign_up_path_for(resource)
    if current_user.admin?
      admin_root_path
    else
      root_path
    end
  end
end
