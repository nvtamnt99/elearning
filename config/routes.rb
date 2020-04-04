Rails.application.routes.draw do
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root 'static_pages#home'
   get 'users/sign_up' => 'users#new'
   post 'users/sign_up' => 'users#create'
   resources :users, only: [:show, :edit, :update]
   resources :categories, only: [:index]
   namespace :admin do
     resources :categories, only: [:new, :create]
     resources :words, only: [:index, :new, :create]
     root 'admin_pages#home'
   end
end
