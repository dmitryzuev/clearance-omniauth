require 'spec_helper'

describe ClearanceOmniauth::Provider do
  it 'initializes with provider and empty params' do
    provider = ClearanceOmniauth::Provider.new(provider: :developer)
    expect(provider.provider).to eq(:developer)
    expect(provider.params).to eq([])
  end
end
