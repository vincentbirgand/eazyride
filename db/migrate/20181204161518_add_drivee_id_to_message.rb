class AddDriveeIdToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :drivee_id, :integer
  end
end
