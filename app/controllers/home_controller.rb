class HomeController < ApplicationController
  def index
    if params[:wide_search].present?
    @search = Search.new
    @search.use_keywords = params[:use_keywords]
    @search.keywords = params[:keywords]
    if params[:wide_search] == "true"
      @recipes = @search.wide_search
    elsif params[:wide_search] == "false"
      @recipes = @search.narrow_search
    end
    @recipes = @recipes.paginate(:page => params[:page])
  else # no params, just index all
    @recipes = Recipe.paginate(:page => params[:page])
  end


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

  def house
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # register a client with YOUR_CLIENT_ID as client_id_
    # client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # get 10 hottest tracks
    tracks = client.get('/tracks', :limit => 15, :tags => 'house', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks

  end

  def trance
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # register a client with YOUR_CLIENT_ID as client_id_
    # client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # get 10 hottest tracks
    tracks = client.get('/tracks', :limit => 15, :tags => 'trance', :filter => 'downloadable', :order => 'hotness')
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

  def trap
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # register a client with YOUR_CLIENT_ID as client_id_
    # client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # get 10 hottest tracks
    tracks = client.get('/tracks', :limit => 15, :tags => 'trap', :filter => 'downloadable', :order => 'hotness')
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


  def test
    client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    track_url = 'http://soundcloud.com/onlythebeat/sets/beatdrop-podcast'
    embed_info = client.get('/oembed', :url => track_url)
    @omg = embed_info['html']


  end

  def login
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494',
                            :client_secret => 'bf26e67873078bcf569189097a087b17',
                            :redirect_uri => 'http://soundsilike.dev/home')
    redirect_to client.authorize_url()
  end


end