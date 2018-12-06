class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @journeys = Journey.all
    # redirect_to journeys_path
  end




end
