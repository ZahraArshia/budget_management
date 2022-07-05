Rails.application.routes.draw do
  resources :items
  resources :groups
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: %i[index]

  resources :groups, only: %i[index new create show destroy update] do
    resources :items, only: %i[index new create destroy update]
  end
end
