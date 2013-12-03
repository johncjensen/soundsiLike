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
end
