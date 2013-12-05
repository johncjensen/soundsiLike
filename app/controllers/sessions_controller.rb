class SessionsController < ApplicationController
skip_before_filter :check_sign_in, :only => [:new, :create]
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to downloads_path

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
