class DubstepController < ApplicationController
  def index
    client = Soundcloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # register a client with YOUR_CLIENT_ID as client_id_
    # client = SoundCloud.new(:client_id => '59cdce76e37ac23f9576fc52793b6494')
    # get 10 hottest tracks
    tracks = client.get('/tracks', :limit => 21, :genres => 'dubstep', :filter => 'downloadable', :order => 'hotness')
    @hotmusic = tracks


    @dubstep = ''


    @download = Download.new

  end


    def new
    @download = Download.new
  end


  def create
    @download = Download.create(download_params)
    respond_to do |format|
      if @download.save
        format.js   {}
      end
    end
  end


    def destroy
      @clearbin = Download.where user_id: is = current_user.id
      @clearbin.destroy
      flash[:info] = "Donesies!!!"
      redirect_to downloads_path
    end

end
