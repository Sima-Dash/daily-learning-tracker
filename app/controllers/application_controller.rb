class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes

  before_action :set_locale 

  def change_locale 
    if I18n.available_locales.map(&:to_s).include?(params[:locale]) 
      session[:locale] = params[:locale] 
    end 

    redirect_back(fallback_location: learning_entries_path) 
  end 

  private

  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale 
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end

  def require_login
    unless logged_in?
      flash[:alert] = I18n.t("flash.login_required")  
      redirect_to login_path
    end
  end

  helper_method :current_user, :logged_in?

end
