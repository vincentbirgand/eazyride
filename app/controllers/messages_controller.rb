class MessagesController < ApplicationController

  def index
  end

  def new
    @journey = Journey.find(params[:journey_id])
    @message = Message.new
    authorize @message
  end

  def show
    @message = Message.find(params[:id])
    authorize @message
  end

  def create
    @journey = Journey.find(params[:journey_id])
    @message = Message.new(message_params)
    @message.journey = @journey
    @message.user = current_user
    p @message
    p @message.save!
    p params
    authorize @message
    if @message.save
      redirect_to journey_path(@journey)
    else
      render :new
    end
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end

end

