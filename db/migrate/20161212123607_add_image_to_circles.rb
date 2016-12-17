class AddImageToCircles < ActiveRecord::Migration[5.0]
  def change
    add_column :circles, :image, :string
  end
end
