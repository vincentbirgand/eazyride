class RemoveJourneyIdToMessage < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :journey_id
  end
end
