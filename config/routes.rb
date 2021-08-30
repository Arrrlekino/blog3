Rails.application.routes.draw do
  get 'posts/index'
  root to: "posts#index"
  get 'posts/all', to: 'posts#all'
  get 'posts/:id', to: 'posts#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
