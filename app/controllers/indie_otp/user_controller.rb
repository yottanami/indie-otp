require_dependency "indie_otp/application_controller"

module IndieOtp
  class UserController < ApplicationController
    before_action :authenticate!, only: :home

    def home

    end

    def request_otp
    end

    # Send OTP
    def generate_otp
      ## SKIP IF USER IS LOGINNED
      mobile = user_params[:mobile]
      unless mobile.nil?
        user = User.find_by mobile: mobile
        if user.nil?
          flash[:danger] = "User not found"
          redirect_to user_request_otp_path
        else
          otp_message = "Your Code is #{user.otp_code}"
          sms_result = ::SMSModule.send_message(mobile, otp_message)
          if  sms_result == true
            session[:current_otp_id] = user.id
#            redirect_to user_check_otp_path
          else
            flash[:danger] = "Can not send text message!"
            redirect_to user_request_otp_path
          end
        end
      end
    end

    def check_otp
      otp = user_params[:otp]
      unless otp.nil?
        user = User.find_by id: session[:current_otp_id]
        unless user.nil?
          if user.authenticate_otp(otp)
            session[:user] = user.id
            redirect_to '/'
          else
            flash[:danger] = "Wrong OTP"
            redirect_to user_request_otp_path
          end
        else
          reset_session
          flash[:danger] = "User info did not send!"
          redirect_to user_request_otp_path
        end
      else
         flash[:danger] = "OTP info did not send!"
         redirect_to user_request_otp_path
      end
    end

    def curent_user

    end

    private
    def user_params
      params.permit(:mobile, :otp)
    end

  end
end
