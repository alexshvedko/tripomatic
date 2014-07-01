class PointsController < ApplicationController

  def show
    @points = City.find(params[:city_id]).points
    respond_to do |format|
      format.json { render :json => @points }
    end
  end

  def create
    #@citi = City.find(params[:city_id])
    #@point_travel = @citi.Points.create!(params[:add_place])
    #redirect_to @citi
  end
end
