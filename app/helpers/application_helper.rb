module ApplicationHelper

  def hide_logo?(params)
    sign_in_page? || homepage?
  end

  def sign_in_page?
    params['controller'] == 'devise/sessions' && params['action'] == 'new'
  end

  def homepage?
    params['controller'] == 'beers' && params['action'] == 'search'
  end
end
