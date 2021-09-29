Rails.application.routes.draw do
 
 root "todo_lists#index"
 # root  "welcome#show"
 resources :todo_lists do
   resources:todo_items
  end
 end
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


