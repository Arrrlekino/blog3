Rails.application.routes.draw do
  get 'books/index'
  get 'books/new', to: 'books#new'
  post 'books/create', to: 'books#create'

  root to: "books#index"
  get 'posts/all', to: 'posts#all'
  #get 'posts/:id', to: 'posts#show'
  get 'books/:id', to: 'books#show'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
