class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.integer :price_per_hour
      t.string :city
      t.text :description
      t.string :category
      t.boolean :availability

      t.timestamps
    end
  end
end
