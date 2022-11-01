Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  root to: 'main#index'

  resources :explore

  get 'boogle', to: 'boogle#show'

  # resources :user do
  #   resources :readinglists, shallow: true
  # end
end
