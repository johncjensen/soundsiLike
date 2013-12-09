class HomeController < ApplicationController
  def index
  end

  def emails
  	@useremails = User.all
  end

  def about
  end

end