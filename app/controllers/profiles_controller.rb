class ProfilesController < ApplicationController

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])

  end
end
