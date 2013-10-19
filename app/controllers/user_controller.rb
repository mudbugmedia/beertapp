class UserController < ApplicationController
  def guest_sign_in
    current_user
    redirect_to "welcome#index"
  end
end
