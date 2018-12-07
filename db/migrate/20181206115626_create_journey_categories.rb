class CreateJourneyCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :journey_categories do |t|
      t.string :journey
      t.string :references
      t.string :category
      t.string :references

      t.timestamps
    end
  end
end
