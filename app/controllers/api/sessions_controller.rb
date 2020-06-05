class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    if @user
      @cart = @user.cart || Cart.create(customer_id: @user.id)
      login!(@user)
      render '/api/users/show'
    else
      render json: ['Invalid Login Credentials'], status: 401
    end
  end

  def destroy
    logout!
    render json: { message: 'You have been logged out' }
  end
end
