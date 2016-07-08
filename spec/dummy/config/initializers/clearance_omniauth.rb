ClearanceOmniauth.configure do |config|
  config.provider :developer
  config.provider :twitter, 'TWITTER_KEY', 'TWITTER_SECRET'
end
