class AnimalsController < ApplicationController
  respond_to :js

  def show
    @animal = Animal.find(params[:id])

    respond_with @animal
  end

end