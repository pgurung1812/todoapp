class AddUserIdToTodoLists < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :user_id, :string
    add_column :todo_lists, :integer, :string
  end
end
