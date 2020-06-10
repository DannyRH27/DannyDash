class Api::FiltersController < ApplicationController

  def index
    @filters = Filter.all
    # debugger
    render :index
  end
end
