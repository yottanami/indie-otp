Rails.application.routes.draw do
  mount Indie::Otp::Engine => "/indie-otp"
end
