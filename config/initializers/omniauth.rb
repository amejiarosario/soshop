OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['SOSHOP_FACEBOOK_KEY'], ENV['SOSHOP_FACEBOOK_SECRET']
  provider :twitter, ENV['SOSHOP_TWITTER_KEY'], ENV['SOSHOP_TWITTER_SECRET']
end