class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_redirect_path, unless: :user_signed_in?

  def set_redirect_path
    @redirect_path = request.path
  end

  def after_sign_in_path_for(resource)
    if params[:redirect_to].present?
      store_location_for(resource, params[:redirect_to])
    elsif request.referer == new_user_session_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
end
