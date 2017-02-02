require 'rails_log_prefix/version'
require 'rails/rack/logger'

module RailsLogPrefix
  Rails::Rack::Logger.class_eval do
    protected

    def call_app(request, env)
      logger.unknown { 'MY CUSTOM MESSAGE' }
      super
    end
  end
end
