class RemoveStatusToMessage < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :status
  end
end
