class WelcomeController < ApplicationController
  def index
  end

  def update
	Juggernaut.publish("/chats", params[:text])
  end
end
