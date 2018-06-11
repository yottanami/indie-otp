module Indie
  module Otp
    class ApplicationController < ApplicationController::Base
      protect_from_forgery with: :exception


    end
  end
end
