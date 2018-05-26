Indie::Otp::Engine.routes.draw do
  get 'user/register'
  get 'user/request_otp'
  post 'user/generate_otp'
  post 'user/check_otp'
  get 'user/logout'
end
