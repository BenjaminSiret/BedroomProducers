class MessagesController < ApplicationController

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new
    if @message.save
      redirect_to message_path(@message)
    else
      render :new
    end
  end
end
