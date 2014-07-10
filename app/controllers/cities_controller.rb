class CitiesController < ApplicationController

  def create
    @city_json = JSON.parse(params[:city])
    @place_json = JSON.parse(params[:add_place])
    unless current_user.cities.map { |i| i.name }.include?(@city_json['name'])
      @city = current_user.cities.create(@city_json)
      @place = current_user.user_cities.find_by_city_id(@city.id).points.create(@place_json)
    else
      @place = current_user.user_cities.find_by_city_id(City.find_by_name(@city_json['name']).id).points.create(@place_json)
    end
    respond_to do |format|
      msg = {:status => "ok", :result => @place}
      format.json { render :json => msg }
    end
  end

  def index
    @city = current_user.cities
    respond_to do |format|
      format.json { render :json => @city }
    end
  end
end
