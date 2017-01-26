class AddCircleIdToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :circle_id, :integer
  end
end
