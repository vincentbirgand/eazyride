class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    @user.save
    redirect_to profile_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :phone, :address, :password, :birth_date, :gender, :verified, :photo)
  end
end
