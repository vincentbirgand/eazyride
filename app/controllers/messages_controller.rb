class MessagesController < ApplicationController
  def new
    @journey = Journey.find(params[:journey_id])
    @message = Message.new
    @message.journey = @journey

  end

  def create
  end

  def show
  end
end
