class Api::OrdersController < ApplicationController

  def index
    @orders = current_user.orders
    render :index
  end

  def show
    @order = Order.find_by(id: params[:id])
    @cart = current_user.cart
    if @order
      render :show
    else
      render json: ['No order exists'], status: 404
    end
  end

  def create
    @order = Order.new(order_params)
    @order.contents = params[:order][:contents] || {}
    @order.store = params[:order][:store] || {}
    @cart = current_user.cart

    if @order.save
      @cart.contents = {}
      @cart.store_id = nil
      @cart.save
      render :show
    else
      render json: ['Order invalid'], status: 401
    end
  end

  private

  def order_params
    params.require(:order).permit(:id, :contents, :customer_id, :store, :total)
  end
end
