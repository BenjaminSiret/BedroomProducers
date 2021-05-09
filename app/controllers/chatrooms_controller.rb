class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @user = current_user
  end
end
