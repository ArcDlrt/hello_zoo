class Api::V1::ZoosController < Api::BaseController
  def show
    zoo = Zoo.find_by_id(params[:id])

    render json: zoo
  end

  def index
    zoos = Zoo.all

    render json: zoos
  end

  def create
    zoo = Zoo.new zoo_params

    render json: zoo.save ? zoo : error_response(zoo)
  end

  def update
    zoo = Zoo.find_by_id params[:id]

    if zoo
      render json: zoo.update_attributes(zoo_params) ? zoo : error_response(zoo)
    else
      render json: zoo
    end
  end

  def destroy
    zoo = Zoo.find_by_id params[:id]

    if zoo && zoo.destroy
      render json: { }
    else
      not_found
    end
  end

  private

  def zoo_params
    params.require(:zoo).permit(:name, :description, :image, animals_attributes: [:id, :name, :description, :breed_id, :_destroy])
  end
end