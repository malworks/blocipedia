class ApplicationController < ActionController::Base
	# before_action :authenticate_user!
  protect_from_forgery with: :exception
	# after_action :verify_authorized, except: :index

  private
   def require_sign_in
     unless current_user
       flash[:alert] = "You must be logged in to do that"
       redirect_to new_session_path
     end
   end
end
