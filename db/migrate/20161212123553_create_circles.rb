class CreateCircles < ActiveRecord::Migration[5.0]
  def change
    create_table :circles do |t|
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
