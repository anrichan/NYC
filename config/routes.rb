Rails.application.routes.draw do
  
  # post 'articles/article_id/'
 
  get 'home/show'

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
  root to: "home#index"

  resources :users, only: [:index] do
    get :favorites, on: :member
  end
   get "users/:id" => "users#show", as: "users_show"

  resources :profiles

  resources :articles do
    resources :comments
    resource :favorites, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
