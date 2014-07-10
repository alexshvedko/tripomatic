class PointsController < ApplicationController
  def index
    @point = Point.all
    respond_to do |format|
      format.json { render :json => @point }
    end
  end

  def show
    @points = City.find(params[:city_id]).points
    respond_to do |format|
      format.json { render :json => @points }
    end
  end


  def destroy
    @point = Point.find(params[:id])
    @point.destroy

    respond_to do |format|
      format.json { render :json => @point }
    end
  end
end
