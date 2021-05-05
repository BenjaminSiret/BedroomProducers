class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new
    if @message.save
      redirect_to message_path(@message)
    else
      render :new
    end
  end

  def destroy
    @message.destroy
  end
end
