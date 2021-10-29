# frozen_string_literal: true
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
  provider :facebook, ENV['FEACEBOOK_APP_ID'], ENV['FEACEBOOK_APP_SECRET'],
  client_options: {
    site: 'https://graph.facebook.com/v10.0',
    authorize_url: "https://www.facebook.com/v10.0/dialog/oauth"
  }
end
