class HardstyleController < ApplicationController
  def hardstyle
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'hardstyle', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
end
