class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  
  def set_locale
    I18n.locale = get_locale_from_browser_setting 
  end
  
  def get_locale_from_browser_setting
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end
  
end
