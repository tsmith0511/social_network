class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :increment_pageviews
  before_filter :get_current_user

  private

  def get_current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def increment_pageviews
    if session[:pageviews] == nil
      session[:pageviews] = 0
    end
    session[:pageviews] = session[:pageviews] + 1
    @pageviews = session[:pageviews]
  end
end
