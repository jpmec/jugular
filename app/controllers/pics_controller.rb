class PicsController < ApplicationController
  #include RestfulJson::DefaultController

  # GET /screencasts
  # GET /screencasts.json
  def index
    render json: Pic.all
  end

  # GET /screencasts/:id
  # GET /screencasts/:id.json
  def show
    render json: Pic.find(params[:id])
  end

end
