require 'rails_log_prefix/version'
require 'railties/rails/rack/logger'

module RailsLogPrefix
  class ExtendedLogger < Rails::Rack::Logger
    protected

    def call_app(request, env)
      logger.unknown { 'MY CUSTOM MESSAGE' }
      super
    end
  end
end
