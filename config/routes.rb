Rails.application.routes.draw do
  resources :todo_items
  put '/todo_items/complete', controller: :todo_items, action: :complete
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
