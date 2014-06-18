class TripomaticController < ApplicationController
  def index
  end

  def show
  end

  def qwe
    @travel = current_user.travels
    respond_to do |format|
      format.json { render :json => @travel }
    end
   end
end
