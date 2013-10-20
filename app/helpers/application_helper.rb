module ApplicationHelper

  def hide_logo?
    sign_in_page? || sign_up_page? || forgot_password_page? || homepage?
  end

  def sign_in_page?
    params['controller'] == 'devise/sessions' && (params['action'] == 'new' || params['action'] == 'create')
  end

  def sign_up_page?
    params['controller'] == 'devise/registrations' && (params['action'] == 'new' || params['action'] == 'create')
  end

  def forgot_password_page?
    params['controller'] == 'devise/passwords' && (params['action'] == 'new' || params['action'] == 'create')
  end

  def homepage?
    params['controller'] == 'beers' && params['action'] == 'search'
  end
end
