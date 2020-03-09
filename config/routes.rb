Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dogs, only: :index
  resources :volunteers, only: [:index, :create, :new] do
    resources :walks, only: [:index, :new]
  end
  resources :walks, only: :create
end
