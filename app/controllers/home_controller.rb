class HomeController < ApplicationController
  def index
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # register a client with YOUR_CLIENT_ID as client_id_
    # client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # get 10 hottest tracks
    tracks = client.get('/tracks', :limit => 15, :tags => 'edm', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks

  end


  def edm
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # register a client with YOUR_CLIENT_ID as client_id_
    # client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # get 10 hottest tracks
    tracks = client.get('/tracks', :limit => 15, :tags => 'edm', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks

  end

  def dubstep
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # register a client with YOUR_CLIENT_ID as client_id_
    # client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # get 10 hottest tracks
    tracks = client.get('/tracks', :limit => 15, :tags => 'dubstep', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks

  end

  def home
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494',
                            :client_secret => 'bf26e67873078bcf569189097a087b17',
                            :redirect_uri => 'http://soundsilike.dev/home')
    redirect_to client.authorize_url()
    tracks = client.get('/me', :limit => 50)
    @myfavs = tracks
  end




end