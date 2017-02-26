class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



  def require_sign_in
    unless current_user
      flash[:alert] = "You must be logged in to do that"
      redirect_to new_user_registration_path
    end
  end
end
