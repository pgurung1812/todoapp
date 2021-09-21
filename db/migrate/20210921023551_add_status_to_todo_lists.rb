class AddStatusToTodoLists < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :status, :boolean
  end
end
