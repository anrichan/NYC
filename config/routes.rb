Rails.application.routes.draw do
  
  # post 'articles/article_id/'
  root to: "home#index"
  get 'home/show'
  get 'articles/search' => 'articles#search'

 devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }
  
  resources :articles do
    resources :comments
    resource :favorites, only: [:create, :destroy]
    resource :reviews, only: [:create, :destroy]
  end



  resources :users do
     get :favorites, on: :member
    member do
     get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  
  get "users/:id" => "users#show", as: "users_show"
  get "admins/:id" => 'admins#show',as: "admins_show"

  resources :profiles
  resources :adminprofiles

  
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
