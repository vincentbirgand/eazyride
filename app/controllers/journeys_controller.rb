class JourneysController < ApplicationController

  def index
    @journeys = Journey.all
    if params[:journey][:source_city].present?
      @journeys = @journeys.where("source_city ILIKE ?", "%#{params[:journey][:source_city]}%")
    end

    if params[:journey][:activity_id].present?
      @journeys = @journeys.where(activity_id: params[:journey][:activity_id])
    end

     if params[:journey][:destination_city].present?
      @journeys = @journeys.where("destination_city ILIKE ?", "%#{params[:journey][:destination_city]}%")
    end

    if params[:journey][:start_time].present?
      @journeys = @journeys.where(start_time: params[:journey][:start_time])
    end


  end

  def new
    @journey = Journey.new()
  end

   def show
    @journey = Journey.find(params[:id])
  end

  def create
    @user
    #to do
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
    params.require(:journey).permit(:id, :description, :activity, :source_city, :destination_city, :price, :shares_gear, :lends_gear, :accepts_gear, :start_time, :end_time)
  end

end

