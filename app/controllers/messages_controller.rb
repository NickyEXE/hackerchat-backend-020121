class MessagesController < ApplicationController

  def create
    channel = Channel.find(params[:channel_id])
    channel.messages.create(message: params[:message], user: session_user)
  end

  def destroy
    Message.find(params[:id]).destroy
  end
end
