module ClearanceOmniauth
  class Configuration
    # @return [Array<ClearanceOmniauth::Provider>] List of ClearanceOmniauth's providers
    attr_reader :providers

    def initialize
      @providers = []
    end

    # Specifies list of providers
    # ```
    # ClearanceOmniauth.configure do |config|
    #   config.provider :developer
    #   config.provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
    # end
    # ```
    # @param provider [Symbol]
    # @param params [Array]
    # @return [Array<ClearanceOmniauth::Provider>] List of ClearanceOmniauth's providers
    def provider(provider, *params)
      @providers << ClearanceOmniauth::Provider.new(provider: provider, params: params)
    end
  end

  class << self
    # @return [ClearanceOmniauth::Configuration] ClearanceOmniauth's current configuration
    def configuration
      @configuration ||= Configuration.new
    end

    # Set Clearance's configuration
    # @param config [Clearance::Configuration]
    # rubocop:disable Style/TrivialAccessors
    def self.configuration=(config)
      @configuration = config
    end

    # Modify ClearanceOmniauth's current configuration
    # @yieldparam [ClearanceOmniauth::Configuration] config current ClearanceOmniauth config
    # ```
    # # config/initializers/clearance_omniauth.rb
    # ClearanceOmniauth.configure do |config|
    #   config.provider :developer
    #   config.provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
    # end
    # ```
    def configure
      yield configuration
    end
  end
end
