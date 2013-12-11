class EmailsController < ApplicationController

def index
    @useremails = User.all
  end
end
