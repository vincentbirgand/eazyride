class AddColumnStatusToDrivee < ActiveRecord::Migration[5.2]
  def change
    add_column :drivees, :status, :string
  end
end
