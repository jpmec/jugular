class PicsController < ApplicationController
  #include RestfulJson::DefaultController

  def index
    render json: Pic.all
  end

  def show
    render json: Pic.find(params[:id])
  end

end
