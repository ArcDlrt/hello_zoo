class ZoosController < ApplicationController

  def new
    @zoo = Zoo.new
    respond_with @zoo
  end

  def create
    @zoo = Zoo.create zoo_params
    respond_with @zoo, location: zoos_path
  end

  def index
    @zoos = Zoo.all
    respond_with @zoos
  end


  def edit
    @zoo = Zoo.find(params[:id])
    respond_with @zoo
  end

  def update
    @zoo = Zoo.find(params[:id])
    @zoo.update_attributes zoo_params
    respond_with @zoo, location: zoos_path
  end

  def destroy
    @zoo = Zoo.find(params[:id])
    @zoo.destroy
    respond_with @zoo
  end

  private

  def zoo_params
    params.require(:zoo).permit(:name, :description)
  end

end