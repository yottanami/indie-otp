require "indie/otp/engine"

module Indie
  module Otp
    extend ActiveSupport::Concern

     def current_user
          puts "test output"
     end
  end
end
