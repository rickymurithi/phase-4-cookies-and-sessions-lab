class SessionsController < ApplicationController
  def index
    session[:session_article] ||= 0
    cookies[:cookies_article] ||= 1
    render json: { session: session, cookies: cookies.to_hash }
  end
end
