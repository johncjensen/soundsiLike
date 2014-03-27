class TrapController < ApplicationController
  def index
    set_genre_to_pull("trap")
  end
end
