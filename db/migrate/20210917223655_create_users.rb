class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
    end
    
    drop_table :todo_lists, force: :cascade
    
    create_table :todo_lists do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.belongs_to :user,null: false, foreign_key:true

      t.timestamps null: false
    end
    add_index:todo_lists, [:user_id, :title]

    add_index :users, :email
    add_index :users, :remember_token
  end
end
