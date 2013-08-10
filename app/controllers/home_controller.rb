class HomeController < ApplicationController
  def index
     @teams = Team.find(:all, :limit=>8)
     @games = Game.find(:all)
     @game_next = Game.find(:all, :limit=>2)
  end
end
