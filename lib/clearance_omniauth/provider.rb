module ClearanceOmniauth
  class Provider
    # @return [Symbol] Provider
    attr_reader :provider

    # @return [Array] Provider's params
    attr_reader :params

    def initialize(provider:, params: [])
      @provider = provider
      @params = params
    end
  end
end
