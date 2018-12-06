class JourneysController < ApplicationController

  def index

    @journeys = Journey.where("seat_available > ?", 0)

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
      search_start_time_mindnight = DateTime.parse(params[:journey][:start_time])
      search_start_time_end_of_the_day = search_start_time_mindnight.end_of_day

      @journeys = @journeys.select do |journey|
        journey.start_time.day == search_start_time_mindnight.day && journey.start_time.month == search_start_time_mindnight.month
      end
     end
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
      redirect_to journey_path(@journey)
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
      redirect_to journey_path(@journey)
    else
      render :edit
    end
  end

  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_to root_path
  end

  private

  def journey_params
    params.require(:journey).permit(:id, :description, :activity_id, :activity_name, :source_city, :destination_city, :price, :shares_gear, :lends_gear, :accepts_gear, :start_time, :end_time)
  end

end
