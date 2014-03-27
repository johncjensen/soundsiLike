class MinimalController < ApplicationController
  def index
    set_genre_to_pull("minimal")
  end
end
