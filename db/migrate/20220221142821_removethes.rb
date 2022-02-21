class Removethes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :users, index: true, foreign_key: true
  end
end
