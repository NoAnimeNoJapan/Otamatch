class AddUserIdToEventJoins < ActiveRecord::Migration[5.0]
  def change
    add_column :event_joins, :user_id, :integer
  end
end
