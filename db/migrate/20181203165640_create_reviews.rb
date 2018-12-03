class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description
      t.references :journey, foreign_key: true
      t.references :reviewee, foreign_key: {to_table: :users}
      t.references :reviewer, foreign_key: {to_table: :users}


      t.timestamps
    end
  end
end
