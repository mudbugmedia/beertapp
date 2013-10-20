Beertap::Application.routes.draw do
  resources :followings

  resources :beers do
    collection do
      get 'search'
    end
  end

  resources :beer_profiles
  root 'beers#search'

  post "user/guest_sign_in"
  devise_for :users
end
