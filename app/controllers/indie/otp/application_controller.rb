module Indie
  module Otp
    class ApplicationController < ::ApplicationController
      protect_from_forgery with: :exception
    end
  end
end
