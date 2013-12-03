Soundsilike::Application.routes.draw do
  root to: "home#index"
  get 'test', to: 'home#test'
  get 'login', to: 'home#login'
  get 'home', to: 'home#home'
end
