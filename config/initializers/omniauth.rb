# frozen_string_literal: true
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :google_oauth2, '615862826044-cfu23g5e0u7o44040t8td3b7fpq7moat.apps.googleusercontent.com', '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'
end
