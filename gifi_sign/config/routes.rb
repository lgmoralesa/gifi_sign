Rails.application.routes.draw do

  resources :resumees
  resources :files_ups
  resources :members
  resources :groups
  resources :lines
  resources :users
  get 'main/index'
  root 'main#index'


  get 'signup' => 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
