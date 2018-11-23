class HomeController < ApplicationController

  def index
    @command = Command.find_by(command: "dummy")
  end

  def about
  end

  def check
    @command = Command.find_by(command: params[:command])

    if !@command then
      @command = Command.find_by(command: "dummy")
    end

    #redirect_to("/")
    render 'index'
  end

end
