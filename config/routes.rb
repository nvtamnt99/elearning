Rails.application.routes.draw do
  get     "login"    => "sessions#new"
  post    "login"    => "sessions#create"
  delete  "logout"   => "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root 'welcome#index'
   get 'users/sign_up' => 'users#new'
   post 'users/sign_up' => 'users#create'
   resources :users
end
