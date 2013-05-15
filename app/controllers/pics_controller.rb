class PicsController < ApplicationController
  # GET /screencasts
  # GET /screencasts.json
  def index
    render json: Pic.all
  end

  # GET /screencasts/:id
  # GET /screencasts/:id.json
  def show
#    render json: Screencast.find(params[:id])
  end

end
