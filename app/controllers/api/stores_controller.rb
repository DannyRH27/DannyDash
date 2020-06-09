class Api::StoresController < ApplicationController
    def show
      @store = Store.find_by(id: params[:id])
      # debugger
      if @store
          render :show
      else
          render json: ['No store exists'], status: 404
      end
    end

    def index
      @stores = Store.all
      render :index
    end

    def search
      fragment = params[:fragment]
      @stores = Store.where("name LIKE ?", "%#{fragment}%")
      render :search
    end

    private

    def store_params
        params.require(:store).permit(:name, :address, :hours, :description, photos:[])
    end
end
