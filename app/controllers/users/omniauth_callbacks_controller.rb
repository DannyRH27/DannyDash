class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def facebook
        # You need to implement the method below in your model (e.g. app/models/user.rb)
        # @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        @user = User.from_omniauth(request.env["omniauth.auth"])
        if @user.persisted?
            login!(@user)
            
            redirect_to "/home"

            sign_in @user, event: :authentication
            set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
        else
            session["devise.facebook_data"] = request.env["omniauth.auth"]
            redirect_to new_user_registration_url
        end

    end

    def failure
        redirect_to root_path
    end
end
