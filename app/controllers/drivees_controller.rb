class DriveesController < ApplicationController
  def index
    @journeys = policy_scope(Journey).where(user_id: current_user)
    @drivees = policy_scope(Drivee).where(user_id: current_user)

  end

  def show
    @journey = Journey.find(params[:journey_id])
    authorize @drivee
  end

  def new
    @journey = Journey.find(params[:journey_id])
    @drivee = Drivee.new
    @drivee.journey = @journey
    authorize @drivee
  end

  def create
    # @user = current_user # je connais le user current_user
    @journey = Journey.find(params[:journey_id]) # je connais le journey params[:journey_id]
    @drivee = Drivee.new(user: current_user, journey: @journey, status: 'pending')

    authorize @drivee
    @drivee.save

    @journey.seat_available -= 1
    @journey.save
    redirect_to new_journey_drivee_path(@journey)
  end



end
