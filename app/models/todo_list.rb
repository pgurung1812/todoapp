class TodoList < ApplicationRecord
    has_many:todo_items,dependent: :destroy
    belongs_to :user
    
    validates :title, presence: true
    validates :description, presence: true
    validates :user, presence: true
    
    PRIORITIES = ['high', 'medium', 'low']
    
end
