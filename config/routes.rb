Beertap::Application.routes.draw do
  resources :beer_profiles
  root 'beer_profiles#index'

  post "user/guest_sign_in"
  devise_for :users
end
