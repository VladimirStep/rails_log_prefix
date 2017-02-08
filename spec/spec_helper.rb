$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rails_log_prefix'

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require File.expand_path('../../spec/dummy/config/environment.rb', __FILE__)
require 'rspec/rails'

Rails.backtrace_cleaner.remove_silencers!

RSpec.configure do |config|
  config.mock_with :rspec
  config.order = 'random'
end