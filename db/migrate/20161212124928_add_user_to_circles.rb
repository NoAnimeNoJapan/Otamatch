class AddUserToCircles < ActiveRecord::Migration[5.0]
  def change
    add_column :circles, :user_id, :integer
  end
end
