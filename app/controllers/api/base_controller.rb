class Api::BaseController < ApplicationController
  protect_from_forgery with: :null_session

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
end