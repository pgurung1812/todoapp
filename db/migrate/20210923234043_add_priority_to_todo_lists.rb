class AddPriorityToTodoLists < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :priority, :string
  end
#  drop_table :todo_items
end
