class PagesController < ApplicationController

  def home
      @journeys = Journey.all
  end
end
