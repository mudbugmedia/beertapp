class UserController < ApplicationController
  def guest_sign_in
    guest_user
    redirect_to "/pages/basu"
  end
end
