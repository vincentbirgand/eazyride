class MessagesController < ApplicationController

  def index
  end



  def new
    @journey = Journey.find(params[:journey_id])
    @message = Message.new
    @message.journey = @journey

  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @drivee = Drivee.find(params[:drivee_id])
    @message = message.new(message_params)
    @message.drivee = @message
    @message.sender = current_user
    if @message.save
      redirect_to new_journey_path(@drivee.journey)
    else
      render :new
    end
  end


  private

  def message_params
    params.require(:message).require(:content, :sender_id, :receiver_id, :drivee_id)
  end

end

