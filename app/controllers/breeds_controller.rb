class BreedsController < ApplicationController

  def new
    @breed = Breed.new
  end

  def create
    @breed = Breed.create breed_params
    respond_with @breed, location: breeds_path
  end

  def index
    @breeds = Breed.all
    respond_with @breeds
  end

  def edit

  end

  def update

  end

  private

  def breed_params
    params.require(:breed).permit(:name)
  end
end