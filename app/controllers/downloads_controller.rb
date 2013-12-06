class DownloadsController < ApplicationController
  def index
    if current_user
    else
      redirect_to :root
    end
    @downloads = Download.where user_id: is = current_user.id
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


    private

    def download_params
      params.permit(:title, :url, :user_id)
    end

  end
