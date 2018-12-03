class CreateJourneys < ActiveRecord::Migration[5.2]
  def change
    create_table :journeys do |t|
      t.string :car_type
      t.integer :seat_available
      t.text :description
      t.string :source_city
      t.string :destination_city
      t.datetime :start_time
      t.datetime :end_time
      t.float :price
      t.integer :total_distance
      t.references :activity, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :accepts_gear
      t.boolean :shares_gear
      t.boolean :lends_gear

      t.timestamps
    end
  end
end
