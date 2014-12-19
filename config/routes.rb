Rails.application.routes.draw do
  root 'videos#index'

  resources :videos do
    resources :comments
  end

  resources :playlists do
    resources :comments
  end
end

