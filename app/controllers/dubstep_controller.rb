class DubstepController < ApplicationController
  def chillstep
    set_genre_to_pull("chillstep")
  end
  def dropstep
    set_genre_to_pull("dropstep")
  end
  def drumstep
    set_genre_to_pull("drumstep")
  end
  def dubstep
    set_genre_to_pull("dubstep")
  end
  def liquid_dubstep
    set_genre_to_pull("liquid dubstep")
  end
  def lovestep
    set_genre_to_pull("lovestep")
  end
end
