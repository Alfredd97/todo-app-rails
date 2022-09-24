Rails.application.routes.draw do
  resources :todo_items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  match '*a', :to => 'errors#routing', via: :get
  # Defines the root path route ("/")
  root 'todo_items#index'
end
