class SessionsController < ApplicationController
  skip_before_filter :check_sign_in, :only => [:new, :create]
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_back_or_default

  end

  def destroy
    session[:user_id] = nil
    redirect_to(:back)
  end


  def redirect_back_or_default(default = root_path, *options)
    tag_options = {}
    options.first.each { |k,v| tag_options[k] = v } unless options.empty?
    redirect_to (request.referer.present? ? :back : default), tag_options
  end

end
