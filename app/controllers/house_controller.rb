class HouseController < ApplicationController
  def acid_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'acid house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def big_room_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'bigroomhouse', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def chicago_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'chicago house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def club_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'clubhouse', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def deep_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'deep house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def dutch_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'dutch house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def electro_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'electro house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def funky_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'funky house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def moombahton
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'moombahton', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def nu_disco
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'nu disco', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def progressive_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'progressive house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def tech_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'tech house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
  def tribal_house
    client = Soundcloud.new(:client_id => ENV['SOUNDCLOUD_CLIENT_ID'])
    tracks = client.get('/tracks', :limit => 21, :tags => 'tribal house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks
    @downloads = ''
  end
end
