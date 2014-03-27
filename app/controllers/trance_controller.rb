class TranceController < ApplicationController
  def goa_trance
    set_genre_to_pull("goa trance")
  end
  def hard_trance
    set_genre_to_pull("hard trance")
  end
  def progressive_trance
    set_genre_to_pull("progressive trance")
  end
  def psy_trance
    set_genre_to_pull("psy trance")
  end
  def tech_trance
    set_genre_to_pull("tech trance")
  end
  def trance
    set_genre_to_pull("trance")
  end
  def uplifting_trance
    set_genre_to_pull("uplifting trance")
  end
  def vocal_trance
    set_genre_to_pull("vocal trance")
  end
end
