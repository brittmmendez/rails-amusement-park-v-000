class AttractionsController < ApplicationController

  def new
    @arttraction=Attraction.new
  end

  def create
    @arttraction=Attraction.create(attraction_params)
  end


  private

  def attraction_params

  end

end
