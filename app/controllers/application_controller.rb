class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale
  def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
  end



  rescue_from CanCan::AccessDenied do |exception|
    redirect_to home_path, alert: exception.message
  end
  protected

  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :lastname, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :lastname, :email, :password, :current_password])
  end
end
