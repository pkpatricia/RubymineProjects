class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	def check_that_user_signed_in
    if session[:user].nil? then
      redirect_to session_sign_in_path
    end
  end
end
