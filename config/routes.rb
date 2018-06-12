IndieOtp::Engine.routes.draw do
   get 'user/home'
  get 'user/register'
  get 'user/request_otp'
  get 'user/generate_otp'
  post 'user/generate_otp'
  get 'user/check_otp'
  post 'user/check_otp'
  get 'user/logout'
end
