class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :set_genre_to_pull

  def set_genre_to_pull(value)
    @client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    @tracks = @client.get('/tracks', :limit => 21, :tags => "#{value}", :filter => 'downloadable', :order => 'hotness')
    @hotmusic = @tracks
    @downloads = ''
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
