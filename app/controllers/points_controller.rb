class PointsController < ApplicationController

  def show
    #@place_obj = current_user.Points.build(params[:add_place])
    #if @place_obj.save
    #  format.html { redirect_to @place_obj }
    #  format.json { render json: @place_obj }
    #else
    #  render "show"
    #end
  end

  def create
    #@citi = City.find(params[:city_id])
    #@point_travel = @citi.Points.create!(params[:add_place])
    #redirect_to @citi
  end
end
