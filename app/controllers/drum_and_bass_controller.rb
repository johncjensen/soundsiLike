class DrumAndBassController < ApplicationController
  def index
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # register a client with YOUR_CLIENT_ID as client_id_
    # client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # get 10 hottest tracks
    tracks = client.get('/tracks', :limit => 21, :genres => 'drum & bass', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks

    
    @drum_and_bass = ''
  end

end
