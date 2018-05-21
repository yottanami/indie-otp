class CreateIndieOtpUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :indie_otp_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
