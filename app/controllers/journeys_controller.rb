class JourneysController < ApplicationController

  def index

    @journeys = policy_scope(Journey)
     if params[:journey][:source_city].present?
      @journeys = @journeys.where("source_city ILIKE ?", "%#{params[:journey][:source_city]}%")
     end
     if params[:journey][:activity_id].present?
       @journeys = @journeys.where(activity_id: params[:journey][:activity_id])
     end
     if params[:journey][:destination_city].present? && params[:journey][:destination_city].downcase != 'partout'
      @journeys = @journeys.where("destination_city ILIKE ?", "%#{params[:journey][:destination_city]}%")
     end
    if params[:journey][:start_time].present?
      search_start_date = DateTime.parse(params[:journey][:start_time]).to_date
      @journeys = @journeys.where("date(start_time) = ?", search_start_date)
    end

    @markers = []

    @journeys.each do |journey|
      results = Geocoder.search(journey.destination_city)
      @long = results.first.data["lon"]
      @lata = results.first.data["lat"]
      @markers << {
        lat: @lata,
        lng: @long,
        infoWindow: render_to_string(partial: "info_window", locals: { journey: journey })
      }
    end
  end

  def new
    @journey = Journey.new()
    authorize @journey
  end

  def show

    @journey = Journey.find(params[:id])
    results = Geocoder.search(@journey.source_city)
    @journey_origin_lon = results.first.data["lon"]
    @journey_origin_lat = results.first.data["lat"]
    results = Geocoder.search(@journey.destination_city)
    @journey_dest_lon = results.first.data["lon"]
    @journey_dest_lat = results.first.data["lat"]
    @distance = Geocoder::Calculations.distance_between([@journey_origin_lat, @journey_origin_lon], [@journey_dest_lat, @journey_dest_lon])
    @drivee = Drivee.new
    authorize @journey
  end


  def create
    @journey = Journey.new(journey_params)

    @journey.source_city = @journey.source_city.split(",")[0]
    @journey.destination_city = @journey.destination_city.split(",")[0]


    # @journey.save
    @journey.user = current_user
    puts "----------"
    p @journey
    puts "----------"
    if @journey.save
      redirect_to journey_path(@journey)
    else
      render :new
    end
    authorize @journey
  end

  def edit
    @journey = Journey.find(params[:id])
    authorize @journey
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
    authorize @journey
  end

  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
    authorize @journey
    redirect_to root_path
  end

  private

  def journey_params
    params.require(:journey).permit(:id, :description, :activity_id, :activity_name, :source_city, :destination_city, :price, :shares_gear, :lends_gear, :accepts_gear, :start_time, :end_time, :car_type, :seat_available)
  end

end
