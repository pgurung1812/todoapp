class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.string :content
      # t.references :todo_list, null: true, foreign_key: true

      t.timestamps
    end
  end
end
