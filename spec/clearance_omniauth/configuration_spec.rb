require 'spec_helper'

describe ClearanceOmniauth::Configuration do
  it 'initializes with default configuration' do
    config = ClearanceOmniauth::Configuration.new
    expect(config.providers).to eq([])
  end

  it 'has .provider method' do
    config = ClearanceOmniauth::Configuration.new
    config.provider :developer
    expect(config.providers[0]).to be_a(ClearanceOmniauth::Provider)
    expect(config.providers[0].provider).to eq(:developer)
    expect(config.providers[0].params).to eq([])
    expect(config.providers.count).to eq(1)
  end

  it 'has global config' do
    expect(ClearanceOmniauth.configuration).to be_a(ClearanceOmniauth::Configuration)
  end

  it 'can set provider through global config' do
    ClearanceOmniauth.configure do |config|
      config.provider :developer
    end
    config = ClearanceOmniauth.configuration
    expect(config.providers[0]).to be_a(ClearanceOmniauth::Provider)
    expect(config.providers[0].provider).to eq(:developer)
    expect(config.providers[0].params).to eq([])
    expect(config.providers.count).to eq(1)
  end

  it 'can override config' do
    config_old = ClearanceOmniauth.configuration
    config_new = ClearanceOmniauth::Configuration.new
    expect(ClearanceOmniauth.configuration).to eq(config_old)
    ClearanceOmniauth.configuration = config_new
    expect(ClearanceOmniauth.configuration).to eq(config_new)
  end
end
