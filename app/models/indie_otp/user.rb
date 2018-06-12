module IndieOtp
  class User < ApplicationRecord
    validates :mobile, uniqueness: true, presence: true

    has_one_time_password

  end
end
