class Api::SessionsController < ApplicationController
    def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if @user
        login!(@user)
        render :show;
    else
        render json: ['Incorrect username/password'], status: 401
    end
  end

  def destroy
    logout!
    render json: { message: 'You have been logged out' }
  end
end
