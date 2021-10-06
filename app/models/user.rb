class User < ApplicationRecord
  include Clearance::User
  
 has_many :todo_lists
end
