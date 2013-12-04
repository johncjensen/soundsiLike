class BackendController < ApplicationController

  def bin
    if current_user
    else
      redirect_to :root
    end

  end

end
