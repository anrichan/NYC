Rails.application.routes.draw do
  
 
  

  resources :profiles

  resources :articles do
    resources :comments
  end
  # post 'articles/article_id/'
  get 'home/index'
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
get "user/:id" => "users#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
