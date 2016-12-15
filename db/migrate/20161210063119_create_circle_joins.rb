class CreateCircleJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :circle_joins do |t|

      t.timestamps
    end
  end
end
