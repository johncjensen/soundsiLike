Soundsilike::Application.routes.draw do
  root to: "home#index"
  resources :downloads

  resources :trap, only: [:index]
  resources :trance, only: [:index]
  resources :house, only: [:index]
  resources :dubstep, only: [:index]

  # resources :trap do
  #   resources :downloads , only: [:index, :new, :create, :destroy]
  # end

  get 'login', to: 'home#login'
  get 'home', to: 'home#home'
  get 'edm', to: 'home#edm'

  # get 'download-bin', to: 'backend#bin', as: 'download_bin'



  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
