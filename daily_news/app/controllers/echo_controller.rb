class EchoController < ApplicationController
  def index
    @text = params[:text]
  end
end
