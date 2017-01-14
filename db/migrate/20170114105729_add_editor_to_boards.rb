class AddEditorToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :editor, :string
  end
end
