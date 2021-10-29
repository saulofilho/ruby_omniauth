# frozen_string_literal: true

class OmniauthCallbacksController < ApplicationController
  def google_oauth2
    # user = User.find_by(request.env['omniauth.auth'])
    render json: request.env['omniauth.auth']
  end

  def facebook
    # user = User.find_by(request.env['omniauth.auth'])
    render json: OmniAuth
  end

  def auth
    request.env['omniauth.auth']
  end

  def index
  end
end
