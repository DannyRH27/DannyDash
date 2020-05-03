class Api::StoresController < ApplicationController
    def show
        @store = Store.find(params{:id})
        render:show

    end

    def index
        @stores = Store.all
        render :index
    end

    private

    def store_params
        params.require(:store).permit(:name, :address, :hours, :description, photos:[])
    end
end
