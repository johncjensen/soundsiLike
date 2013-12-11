class DnbController < ApplicationController
  def dnb
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'drum&bass, drumnbass, dnb', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
end