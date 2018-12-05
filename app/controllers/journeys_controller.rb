class JourneysController < ApplicationController
  def index
    @journeys = Journey.all
    # @journeys = Journey.where(source_city: params[:source_city], destination_city: params[:destination_city])
  end

  def new
    @journey = Journey.new()
  end

  def show
    @journey = Journey.find(params[:id])
    @drivee = Drivee.new
  end


  def create
    @journey = Journey.new(journey_params)
    @journey.save
    @journey.user = current_user
    if @journey.save
      redirect_to journeys_path
    else
      render :new
    end
  end

  def edit
    @journey = Journey.find(params[:id])
  end

  def update
    @journey = Journey.find(params[:id])
    @journey.update(journey_params)
    @journey.user = current_user
    if @journey.save
      redirect_to journeys_path
    else
      render :edit
    end
  end

  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_to journeys_path
  end

  private

  def journey_params
    params.require(:journey).permit(:id, :description, :activity_id, :activity_name, :source_city, :destination_city, :price, :shares_gear, :lends_gear, :accepts_gear, :start_time, :end_time)
  end

end
