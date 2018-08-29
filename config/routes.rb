Rails.application.routes.draw do

  get 'doses/create'
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :new ]
  end

  resources :doses, only: [:destroy]
end
