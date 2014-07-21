require 'nokogiri'
require 'open-uri'

class PointsController < ApplicationController
  def parsing_image
    doc = Nokogiri::HTML(open(params[:url]))
  end

  def index
    @point = []
    @user_city = current_user.user_cities.all.map(&:id)
    @user_city.each { |i| @point += UserCity.find(i).points }

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
