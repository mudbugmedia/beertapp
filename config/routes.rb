Beertap::Application.routes.draw do
  resources :followings

  resources :beers do
    collection do
      get 'search'
    end
  end

  resources :beer_profiles
  root 'beers#search'
  get 'beer_profiles/users/:id' => 'beer_profiles#users'
  root 'beer_profiles#index'

  post "user/guest_sign_in"
  devise_for :users
end
