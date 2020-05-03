class Api::UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.save
            login!(@user)
            render 'api/users/show'
        else
            render json: @user.errors.full_messages, status: 404
        end
    end

    def show
        @user = current_user
    end

    def update
        @user = current_user
        if @user && @user.update_attributes(user_params)
            render :show
        elsif !@user
            render json: ['User not found'], status: 404
        else
            render json: @user.errors.full_messages, status: 404
        end
    end

    def destroy
        @user = current_user
        if @user
            @user.destroy
            render :show
        else
            render ['Could not find user']
        end
    end


    private

    def user_params
        params.require(:user).permit(:fname, :lname, :phone_number, :email, :password)
    end

end
