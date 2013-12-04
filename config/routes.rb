Soundsilike::Application.routes.draw do
  root to: "home#edm"
  get 'test', to: 'home#test'
  get 'login', to: 'home#login'
  get 'home', to: 'home#home'
  get 'edm', to: 'home#edm'
  get 'house', to: 'home#house'
  get 'trance', to: 'home#trance'
  get 'dubstep', to: 'home#dubstep'
  get 'trap', to: 'home#trap'

  get 'download-bin', to: 'backend#bin', as: 'download_bin'


  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
