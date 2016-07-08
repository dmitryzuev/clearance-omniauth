class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
