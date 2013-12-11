Soundsilike::Application.routes.draw do
  root to: "home#index"
  # get 'emails', :to => 'emails#index'
  get 'about', :to => 'home#about'
  #download bin stuff
  resources :downloads, only:[:index, :new, :create, :destroy]
  get '/clearbin', :to => 'downloads#destroy'
  #end download bin stuff

  # omniauth facebook
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  # end omniauth

  #### GENRES ####
  # dub genres
  get 'chillstep', :to => 'dubstep#chillstep'
  get 'dropstep', :to => 'dubstep#dropstep'
  get 'drumstep', :to => 'dubstep#drumstep'
  get 'dubstep', :to => 'dubstep#dubstep'
  get 'liquid-dubstep', :to => 'dubstep#liquid_dubstep'
  get 'lovestep', :to => 'dubstep#lovestep'
  # end dub genres

  get 'drum-and-bass', :to => 'dnb#dnb'

  get 'hardstyle', :to => 'hardstyle#hardstyle'

  # house genres
  get 'acid-house', :to => 'house#acid_house'
  get 'big-room-house', :to => 'house#big_room_house'
  get 'chicago-house', :to => 'house#chicago_house'
  get 'club-house', :to => 'house#club_house'
  get 'deep-house', :to => 'house#deep_house'
  get 'dutch-house', :to => 'house#dutch_house'
  get 'electro-house', :to => 'house#electro_house'
  get 'funky-house', :to => 'house#funky_house'
  get 'house', :to => 'house#house'
  get 'moombahton', :to => 'house#moombahton'
  get 'nu-disco', :to => 'house#nu_disco'
  get 'progressive-house', :to => 'house#progressive_house'
  get 'tech-house', :to => 'house#tech_house'
  get 'tribal-house', :to => 'house#tribal_house'
  # end house genres

  resources :minimal, only: [:index]

  # trance genres
  get 'goa-trance', :to => 'trance#goa_trance'
  get 'hard-trance', :to => 'trance#hard_trance'
  get 'progressive-trance', :to => 'trance#progressive_trance'
  get 'psy-trance', :to => 'trance#psy_trance'
  get 'tech-trance', :to => 'trance#tech_trance'
  get 'trance', :to => 'trance#trance'
  get 'uplifting-trance', :to => 'trance#uplifting_trance'
  get 'vocal-trance', :to => 'trance#vocal_trance'
  # end trance genres

  resources :trap, only: [:index]
end
