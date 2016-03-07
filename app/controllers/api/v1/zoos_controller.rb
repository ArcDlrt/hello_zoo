class Api::V1::ZoosController < Api::BaseController
  def show
    render json: resource
  end

  def index
    zoos = Zoo.page(params[:page])

    render json: zoos
  end

  def create
    zoo = Zoo.new zoo_params

    render json: zoo.save ? zoo : error_response(zoo)
  end

  def update
    if resource
      render json: resource.update_attributes(zoo_params) ? resource : error_response(resource)
    else
      render json: resource
    end
  end

  def destroy
    if resource && resource.destroy
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