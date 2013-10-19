class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_any_user
    authenticate_user! unless session[:guest_user_id]
  end

  def current_user
    session[:guest_user_id].nil? ? super : guest_user
  end

  def guest_user
    User.find(session[:guest_user_id].nil? ? session[:guest_user_id] = create_guest_user.id : session[:guest_user_id])
  end

  private

  def create_guest_user
    u = User.create(:email => "guest_#{Time.now.to_i}#{rand(99)}@example.com")
    u.save(:validate => false)
    u
  end

end
