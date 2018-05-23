require_dependency "indie/otp/application_controller"

module Indie::Otp
  class UserController < ApplicationController
    def register
    end

    def request_otp
    end

    # Send OTP
    def login
      mobile = user_params[:mobile]
      unless mobile.nil?
        user = User.find_by mobile: mobile
        if user.nil?
          flash[:danger] = "User not found"
          redirect_to user_request_otp_path
        else
          SMSModule.send(mobile, user.generate_otp)
        end
      end
    end

    def logout
    end

    def curent_user
    end

    private
    def user_params
      params.permit(:mobile)
    end
  end
end
