class Addforeignkeyusertobookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :user, index: true, foreign_key: true
  end
end
