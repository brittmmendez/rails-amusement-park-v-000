class RidesController < ApplicationController

  def new
    @ride=Ride.new
      @ride.user_id = params[:user_id]
      @ride.attraction_id = params[:attraction_id]
      @ride.save


    flash[:notice] = @ride.take_ride
    redirect_to user_path(@ride.user)
  end


end
