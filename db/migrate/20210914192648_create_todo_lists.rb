class CreateTodoLists < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_lists do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.belongs_to :user,null: false, foreign_key:true

      t.timestamps null: false
    end
    add_index:todo_lists, [:user_id, :title]
  end
end
