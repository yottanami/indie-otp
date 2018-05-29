module UserHelper
  extend ActiveSupport::Concern

  def user_signed_in?
    not current_user.nil?
  end

  def current_user
    session['user']
  end

  def authenticate!
    redirect_to user_request_otp_path unless user_signed_in?
  end
end
