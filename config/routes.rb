Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dogs, only: :index
  resources :volunteers, only: [:index, :create, :new] do
    resources :walks, only: [:index, :new]
  end
  resources :walks, only: :create
  
  get '/dogs/longestinspca', to: 'dogs#longestinspca'
  get '/dogs/rottweiler', to: 'dogs#rottweiler'
  get '/dogs/female', to: 'dogs#female'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
end
