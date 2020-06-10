class Api::FiltersController < ApplicationController

  def index
    @filters = Filter.all
    render :index
  end
end
