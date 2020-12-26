Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items do
    resources :orders, only: [:index, :create]
    collection do
      get "search"
      get "lady"
      get "man"
      get "baby"
      get "interior"
      get "book"
      get "toy"
      get "camera"
      get "sport"
      get "handmade"
      get "other"
    end
  end
end
