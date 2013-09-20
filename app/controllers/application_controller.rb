class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def user_logged_in
    if session[:user_id]
    else
      flash[:alert] = "Nu uh uh. You don't have access to this."
      redirect_to root_url
    end
  end

  def sign_in(user)
    session[:user_id] = user.id if user.present?
  end

  def sign_out
    session[:user_id] = nil
  end

  def current_user
    User.find_by id: session[:user_id] if session[:user_id]
  end
end
