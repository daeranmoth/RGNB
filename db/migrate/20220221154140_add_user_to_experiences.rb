class AddUserToExperiences < ActiveRecord::Migration[6.1]
  def change
    add_reference :experiences, :user, null: false, foreign_key: true
  end
end
