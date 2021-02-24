class RegistrationsController < ApplicationController

    before_action :sign_up_params, :account_update_params, if: :devise_controller?

    private
  
    def sign_up_params
      params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end
  
    def account_update_params
      params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
    end
end
