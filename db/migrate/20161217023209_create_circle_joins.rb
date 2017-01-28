class CreateCircleJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :circle_joins do |t|
      t.integer :user_id
      t.integer :circle_id

      t.timestamps
    end
  end
end
