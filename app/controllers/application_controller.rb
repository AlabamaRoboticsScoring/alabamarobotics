class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def require_admin
    unless user_signed_in? and current_user.admin?
      
      redirect_to '/', alert: "You must be an admin to access this resource."
    end
  end
end
