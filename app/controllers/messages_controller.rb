class MessagesController < ApplicationController

  def index
  end



  def new
    @journey = Journey.find(params[:journey_id])
    @message = Message.new
    @message.journey = @journey

  end

  def create
  end

  def show
    @message = Message.find(params[:id])
  end
end
