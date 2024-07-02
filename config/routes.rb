Rails.application.routes.draw do
  root "photos#index"

  devise_for :users  

  get "/:username" => "users#show", as: :user

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
end
