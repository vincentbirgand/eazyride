class RemoveDriveeToMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :drivee_id
  end
end
