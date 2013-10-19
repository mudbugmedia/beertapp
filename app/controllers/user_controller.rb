class UserController < ApplicationController
  def guest_sign_in
    guest_user
    redirect_to "/"
  end
end
