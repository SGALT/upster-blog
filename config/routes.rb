Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :articles, only: [:show]

  namespace :admin do
    root to: 'articles#index'
    resources :articles, only: [:new, :create, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
