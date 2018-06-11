Indie::Otp::Engine.routes.draw do
  get 'user/home'
  get 'user/register'
  get 'user/request_otp'
  get 'user/generate_otp'
  post 'user/generate_otp'
  post 'user/check_otp'
  get 'user/logout'
end
