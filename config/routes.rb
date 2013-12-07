Soundsilike::Application.routes.draw do
  root to: "home#index"
  resources :downloads, only:[:index, :new, :create, :destroy]
  get '/clearbin', :to => 'downloads#destroy'
  resources :trap, only: [:index]
  resources :dubstep, only: [:index]

  resources :drum_and_bass, only: [:index], path: "drum-and-bass"


  # house
  resources :acid_house, only: [:index], path: "acid-house"
  resources :big_room_house, only: [:index], path: "big-room-house"
  resources :chicago_house, only: [:index], path: "chicago-house"
  resources :deep_house, only: [:index], path: "deep-house"
  resources :dutch_house, only: [:index], path: "dutch-house"
  resources :electro_house, only: [:index], path: "electro-house"
  resources :funky_house, only: [:index], path: "funky-house"
  resources :house, only: [:index]
  resources :moombahton, only: [:index], path: "moombahton"
  resources :nu_disco, only: [:index], path: "nu-disco"
  resources :progressive_house, only: [:index], path: "progressive-house"
  resources :tech_house, only: [:index], path: "tech-house"
  # end house

  resources :minimal, only: [:index]


  # trance
  resources :goa_trance, only: [:index], path: "goa-trance"
  resources :hard_trance, only: [:index], path: "hard-trance"
  resources :progressive_trance, only: [:index], path: "progressive-trance"
  resources :psy_trance, only: [:index], path: "psy-trance"
  resources :tech_trance, only: [:index], path: "tech-trance"
  resources :trance, only: [:index]
  resources :uplifting_trance, only: [:index], path: "uplifting-trance"
  resources :vocal_trance, only: [:index], path: "vocal-trance"
  # end trance

  
  # omniauth facebook
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  # end omniauth
end
