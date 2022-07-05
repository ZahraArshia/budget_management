Rails.application.routes.draw do
  devise_for :users
  resources :items
  resources :groups
  resources :users

  devise_scope :user do
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end

    unauthenticated do
      root 'users#index', as: :unauthenticated_root
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: "users#index"
  resources :users, only: %i[index]

  resources :groups, only: %i[index new create show destroy update] do
    resources :items, only: %i[index new create destroy update]
  end
end
