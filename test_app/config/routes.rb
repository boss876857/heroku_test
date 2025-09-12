Rails.application.routes.draw do
  
  # Defines the root path route ("/")
  root "books#index"

  resources :books do
    member do
      get :delete
    end
  end
  
  ### same thing as below but have all standard CRUD routes:
  # get 'books/index'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
