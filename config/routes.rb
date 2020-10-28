Rails.application.routes.draw do
  
  resources :bands, only: [:show, :create, :delete]
  resources :playlist_additions, only: [:create, :delete]
  resources :playlists, only: [:index, :show, :create, :update, :delete]
  resources :requests, only: [:create]
  resources :shows, only: [:show, :create]
  resources :songs, only: [:create]
  post 'bands/login', to: 'bands#login'
end
