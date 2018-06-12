Rails.application.routes.draw do
  mount IndieOtp::Engine => "/indie_otp"
end
