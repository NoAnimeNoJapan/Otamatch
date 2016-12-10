class CreateEventJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :event_joins do |t|

      t.timestamps
    end
  end
end
