class Api::CartsController < ApplicationController

  def show
    # debugger
    @cart = current_user.cart
  end

  def update
    @cart = current_user.cart
    
    # debugger
    if @cart
      @cart.contents = params[:contents]
      @cart.update(update_cart_params)
      render :show
    elsif !@cart
      render json: ['Cart not found'], status: 404
    else
      render json: @cart.errors.full_messages, status: 404
    end
  end

  # def destroy
  #   @user = current_user
  #   if @user
  #       @user.cart.destroy
  #       render json: ['Cart successfully destroyed']
  #   else
  #       render ['Could not find cart']
  #   end
  # end

  def update_cart_params
    params.permit(:id, :contents, :customer_id, :store_id)
  end
end
