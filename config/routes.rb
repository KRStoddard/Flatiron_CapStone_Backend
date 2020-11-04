Rails.application.routes.draw do
  
  resources :bands, only: [:show, :create, :destroy]
  resources :playlist_additions, only: [:update, :destroy]
  resources :playlists, only: [:index, :show, :create, :update, :destroy]
  resources :requests, only: [:create]
  resources :shows, only: [:index, :show, :update, :create, :destroy]
  resources :songs, only: [:create]
  post 'bands/login', to: 'bands#login'
  get '/auto_login', to: 'bands#auto_login'
end
