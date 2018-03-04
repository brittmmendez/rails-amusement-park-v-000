class AttractionsController < ApplicationController

  def new
    @arttraction=Attraction.new
  end

  def create
    @arttraction=Attraction.create(attraction_params)
  end

  def show
  end

  def edit
  end

  def update
  end


  private

  def attraction_params

  end

end
