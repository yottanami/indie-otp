module Indie
  module Otp
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
