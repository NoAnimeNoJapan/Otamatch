class AddEventIdToEventJoins < ActiveRecord::Migration[5.0]
  def change
    add_column :event_joins, :event_id, :integer
  end
end
