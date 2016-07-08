module ClearanceOmniauth
  class Provider
    # @return [Symbol] Provider
    attr_reader :provider

    # @return [Array] Provider's params
    attr_reader :params

    def initialize(**args)
      @provider = args.fetch(:provider)
      @params = args.fetch(:params, nil)
    end
  end
end
