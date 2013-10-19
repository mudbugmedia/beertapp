Beertap::Application.routes.draw do
  post "user/guest_sign_in"
  devise_for :users
end
