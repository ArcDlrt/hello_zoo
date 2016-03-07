class Api::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :set_resource, only: [:show, :update, :destroy]

  rescue_from ActionController::ParameterMissing, with: :missing_params

  protected

  def error_response(resource)
    { errors: resource.errors.messages }
  end

  def missing_params(exception)
    render json: { error: exception.to_s }
  end

  def not_found
    render json: { error: 'not found' }
  end

  private

  def resource_class
    @resource_class ||= resource_name.classify.constantize
  end

  def resource_name
    @resource_name ||= self.controller_name.singularize
  end

  def resource_params
    @resource_params ||= self.send("#{resource_name}_params")
  end

  def resource
    instance_variable_get("@#{resource_name}")
  end

  def set_resource(resource = nil)
    resource ||= resource_class.find(params[:id])
    instance_variable_set("@#{resource_name}", resource)
  end
end