class ProfilesController < ApplicationController
  def profile_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
