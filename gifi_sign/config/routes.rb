Rails.application.routes.draw do

  get 'sessions/new'

  root 	 'main#index'
  
  get 	 'main/index'
  get 	 'signup' => 'users#new'
  get 	 'login'  => 'sessions#new'
  post 	 'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :resumees
  resources :files_ups
  resources :members
  resources :groups
  resources :lines
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
