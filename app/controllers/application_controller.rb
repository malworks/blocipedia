class ApplicationController < ActionController::Base
	include Pundit
	before_action :authenticate_user!
  protect_from_forgery with: :exception
	after_action :verify_authorized, except: :index
end
