class PagesController < ApplicationController
  def home
    @journeys = Journey.all
    # redirect_to journeys_path
  end

end
