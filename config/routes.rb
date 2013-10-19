Beertap::Application.routes.draw do
  resources :beer_profiles

  post "user/guest_sign_in"
  devise_for :users
end
