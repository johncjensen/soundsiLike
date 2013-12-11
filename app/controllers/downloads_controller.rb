class DownloadsController < ApplicationController
  def index
    if current_user
    else
      redirect_to :root
    end
    @downloads = Download.where user_id: is = current_user.id
    @realname = User.where user_id: is = current_user.id
    @shit = ''
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

  # def create
  #   @download = Download.create(download_params)
  #   #do whatever you want
  #     respond_to do |format|
  #       if @download.save
  #         format.js
  #         format.html { redirect_to(@drum_and_bass, :notice => 'Message was successfully created.') }
  #       else
  #         #deal with errors here/ redirect wherever you want
  #       end
  #     end
  #   end


    def destroy
      @download = Download.where user_id: is = current_user.id
      @download.destroy_all
      redirect_to downloads_path
    end


    private

    def download_params
      params.permit(:title, :url, :user_id, :bpm, :genre)
    end

  end
