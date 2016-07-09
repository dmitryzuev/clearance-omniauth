require 'spec_helper'

describe ClearanceOmniauth::Provider do
  it 'initializes with provider and empty params' do
    provider = ClearanceOmniauth::Provider.new(provider: :developer)
    expect(provider.provider).to eq(:developer)
    expect(provider.params).to eq([])
  end

  it 'initializes with provider and params' do
    provider = ClearanceOmniauth::Provider.new(provider: :developer, params: %w(one two))
    expect(provider.provider).to eq(:developer)
    expect(provider.params).to eq(%w(one two))
  end

  it 'fails to initialize without provider' do
    expect { ClearanceOmniauth::Provider.new }.to raise_error(ArgumentError)
  end

  it 'can not write to provider or params directly' do
    provider = ClearanceOmniauth::Provider.new(provider: :developer)
    expect { provider.provider = :facebook }.to raise_error(NoMethodError)
    expect { provider.params = %w(one two) }.to raise_error(NoMethodError)
  end
end
