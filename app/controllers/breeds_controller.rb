class BreedsController < ApplicationController
  def new
    @breed = Breed.new
    respond_with @breed
  end

  def create
    @breed = Breed.create breed_params
    respond_with @breed, location: breeds_path
  end

  def index
    @breeds = Breed.page(params[:page])
    respond_with @breeds
  end

  def edit
    @breed = Breed.find(params[:id])
    respond_with @breed
  end

  def update
    @breed = Breed.find(params[:id])
    @breed.update_attributes breed_params
    respond_with @breed, location: breeds_path
  end

  def destroy
    @breed = Breed.find(params[:id])
    @breed.destroy
    respond_with @breed
  end

  private

  def breed_params
    params.require(:breed).permit(:name)
  end
end