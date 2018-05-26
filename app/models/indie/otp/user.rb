module Indie::Otp
  class User < ApplicationRecord
    before_save :create_remember_token
    validates :mobile, uniqueness: true, presence: true

    has_one_time_password

    private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  end
end
