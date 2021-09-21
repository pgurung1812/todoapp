class AddDuedateToTodoLists < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :duedate, :date
  end
end
