Indie::Otp::Engine.routes.draw do
  get 'user/register'
  get 'user/indie-otp'
  post 'user/login'
  get 'user/logout'
end
