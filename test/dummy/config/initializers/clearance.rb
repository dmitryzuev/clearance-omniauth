Clearance.configure do |config|
  config.mailer_sender = 'reply@example.com'
  config.omniauth_providers << [:developer]
  config.omniauth_providers << [:twitter, 'TWITTER_KEY', 'TWITTER_SECRET']
end
