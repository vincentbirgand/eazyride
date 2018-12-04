class JourneysController < ApplicationController
def index
    @journeys = Journey.all
    @journeys = Journey.where(user: current_user)
    # @journeys = policy_scope(Journey)
  end

   def show
    @journey = Journey.find(params[:id])
  end

  def new
    @journey = Journey.new()
  end

  # def create
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

