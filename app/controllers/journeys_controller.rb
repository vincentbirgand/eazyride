class JourneysController < ApplicationController
def index
    @journeys = Journey.all
    # @journeys = Journey.where(source_city: params[:source_city], destination_city: params[:destination_city])
    #résultat de la recherche de la home
  end

   def show
    @journey = Journey.find(params[:id])
  end

  def new
    @journey = Journey.new()
  end

  def create
    @user
  end

  def destroy
    @journey = Journey.find(params[:id])
    @journey.destroy
    redirect_to journeys_path
  end



  #   @material = Material.find(params[:material_id])
  #   @location = Location.new(location_params)
  #   @location.material = @material
  #   authorize @location
  #   @location.user = current_user
  #   if @location.save
  #     redirect_to material_validation_path(@material, @location)
  #   else
  #     render 'new'
  #   end
  # end

  # def validation
  #   @location = Location.find(params[:id])
  #   authorize @location
  # end

  # private

  # def location_params
  #   params.require(:location).permit(:id, :start_date, :end_date, :user_id, :material_id)
  # end

end

