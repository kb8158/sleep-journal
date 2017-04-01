class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery unless: -> { request.format.json? }

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:index]

  protected

  def configure_permitted_parameters
    update_attrs = [:password, :password_confirmation, :current_password, :email]
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :photo])
  end
end
