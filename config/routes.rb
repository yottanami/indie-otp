Indie::Otp::Engine.routes.draw do
  get 'user/register'
  get 'user/request_otp'
  post 'user/login'
  get 'user/logout'
end
