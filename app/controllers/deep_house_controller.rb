class DeepHouseController < ApplicationController
  def index
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :genres => 'deep house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
end
