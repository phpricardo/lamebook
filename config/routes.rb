Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts

  post 'posts/:id/like', to: 'posts#like', as: :like
end
