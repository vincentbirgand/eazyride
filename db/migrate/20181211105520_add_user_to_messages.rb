class AddUserToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :user, foreign_key: true

    remove_reference :messages, :sender,   foreign_key: { to_table: :users }
    remove_reference :messages, :receiver, foreign_key: { to_table: :users }
  end
end
