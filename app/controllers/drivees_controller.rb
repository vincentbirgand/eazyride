class DriveesController < ApplicationController
  def new
    @journey = Journey.find(params[:journey_id])
    @drivee = Drivee.new
    @drivee.journey = @journey
  end

  def create
    # @user = current_user # je connais le user current_user
    @journey = Journey.find(params[:journey_id]) # je connais le journey params[:journey_id]
    @drivee = Drivee.new(user: current_user, journey: @journey, status: 'pending')
    @drivee.save
    @journey.seat_available -= 1
    @journey.save
    redirect_to new_journey_drivee_path(@journey)
  end
end
