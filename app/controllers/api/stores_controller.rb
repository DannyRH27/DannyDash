class Api::StoresController < ApplicationController
    def show
      @store = Store.find_by(id: params[:id])
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
      @stores = Store.where("name ilike ?", "%#{fragment}%")
      render :search
    end

    def filter
      filter = params[:filter]
      @stores = Store.joins(:filters).where(filters: {filter_title: "#{filter}"}).preload(:filters)
      render :filter
    end

    private

    def store_params
        params.require(:store).permit(:name, :address, :hours, :description, :rating, :rating_count, :price_rating, photos:[])
    end
end
