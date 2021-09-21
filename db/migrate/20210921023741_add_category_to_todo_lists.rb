class AddCategoryToTodoLists < ActiveRecord::Migration[6.1]
  def change
    add_column :todo_lists, :category, :string
  end
end
