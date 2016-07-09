ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
SimpleCov.start do
  add_filter 'spec'

  add_group 'Lib', 'lib'
end

require 'rails/all'
require 'dummy/config/application'

require 'rspec/rails'

Dir[Rails.root.join('../../spec/support/**/*.rb')].each { |f| require f }

Dummy::Application.initialize!

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.order = :random
  config.use_transactional_fixtures = true

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
  end

  if Rails::VERSION::MAJOR >= 5
    require 'rails-controller-testing'
    config.include Rails::Controller::Testing::TestProcess
    config.include Rails::Controller::Testing::TemplateAssertions
    config.include Rails::Controller::Testing::Integration
  end
end

def restore_default_config
  ClearanceOmniauth.configuration = nil
  ClearanceOmniauth.configure {}
end
