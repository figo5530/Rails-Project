Rails.application.routes.draw do
  resources :flights
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#home'
  resources :users do
    resources :trips, only: [:index, :show, :edit, :update, :destroy]
  end

  resources :flights do
    resources :trips, only: [:new, :create]
  end
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback', to: 'sessions#create_with_fb'
end




