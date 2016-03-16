class SessionController < ApplicationController
  def sign_in
    entered_email = params[:entered_email]
    if not entered_email.nil?
      user = User.find_by_email(entered_email)
      if user && user.authenticate(params[:entered_password]) then
        session[:user] = user.id
        redirect_to root_path
      else
        redirect_to session_sign_in_path,
                    notice: 'That email address and password are not recognized.'
      end
    end
  end

  def sign_out
    session[:user] = nil
  end
end
