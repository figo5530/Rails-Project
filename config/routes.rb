Rails.application.routes.draw do
  resources :flights
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#home'
  resources :users 
  
  resources :flights do
    resources :trips
  end
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback', to: 'sessions#create_with_fb'
end
