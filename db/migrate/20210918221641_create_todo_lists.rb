class CreateTodoLists < ActiveRecord::Migration[6.1]
  def change
    drop_table :todo_items
    drop_table :todo_lists
    
    create_table :todo_lists do |t|
      t.string :title
      t.text :description
      t.date :duedate
      t.boolean :status
      t.string :category

      t.timestamps
    end
  end
end
