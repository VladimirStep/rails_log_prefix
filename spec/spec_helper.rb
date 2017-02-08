$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rails_log_prefix'

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

require File.expand_path('../../spec/dummy/config/environment.rb', __FILE__)
require 'rspec/rails'

Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!

  config.warnings = true

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  Kernel.srand config.seed
end