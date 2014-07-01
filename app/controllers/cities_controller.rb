class CitiesController < ApplicationController

  def create
    #debugger
    unless current_user.cities.map { |i| i.name }.include?(params[:city][:name])
      @city = current_user.cities.create(params[:city])
      current_user.user_cities.find_by_city_id(@city.id).points.create(params[:add_place])
    else
      current_user.user_cities.find_by_city_id(City.find_by_name(params[:city][:name]).id).points.create(params[:add_place])
    end
  end

  def index
    @city = current_user.cities
    respond_to do |format|
      format.json { render :json => @city }
    end
  end
end
