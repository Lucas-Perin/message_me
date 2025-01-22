class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @messages = Message.new
    @messages = Message.all
  end
end
