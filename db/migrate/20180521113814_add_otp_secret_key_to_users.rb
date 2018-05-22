class AddOtpSecretKeyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :indie_otp_users, :otp_secret_key, :string
  end
end
