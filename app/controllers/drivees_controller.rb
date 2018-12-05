class DriveesController < ApplicationController
  def new
    @journey = Journey.find(params[:journey_id])
    @drivee = Drivee.new
    @drivee.journey = @journey
  end
end
