class TranceController < ApplicationController
  def goa_trance
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'goa trance', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks 
    @downloads = ''
  end
  def hard_trance
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'hard trance', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks 
    @downloads = ''
  end
  def progressive_trance
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'progressive trance', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks 
    @downloads = ''
  end
  def psy_trance
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'psy trance', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks 
    @downloads = ''
  end
  def tech_trance
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'tech trance', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks 
    @downloads = ''
  end
  def trance
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'trance', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks 
    @downloads = ''
  end
  def uplifting_trance
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'uplifting trance', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks 
    @downloads = ''
  end
  def vocal_trance
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'vocal trance', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks 
    @downloads = ''
  end
end
