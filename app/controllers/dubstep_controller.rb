class DubstepController < ApplicationController
  def dropstep
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'dropstep', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def drumstep
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'drumstep', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def dubstep
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'dubstep', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def liquid_dubstep
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'liquid dubstep', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def lovestep
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'lovestep', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
end
