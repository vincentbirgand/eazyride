class AddJourneyToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :journey, foreign_key: true
  end
end
