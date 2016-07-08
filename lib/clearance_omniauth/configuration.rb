Clearance::Configuration.class_eval do
  attr_accessor :omniauth_providers

  def initialize
    super
    @omniauth_providers = []
  end
end
