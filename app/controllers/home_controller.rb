class HomeController < ApplicationController
  def index
    @zoos = Zoo.all
    respond_with @zoos
  end
end