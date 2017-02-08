require 'rails_log_prefix/railtie' if defined?(Rails)
require 'rails_log_prefix/version'
require 'rails/commands/commands_tasks'

module RailsLogPrefix
  Rails::CommandsTasks.class_eval do

#     DEFAULT_CUSTOM_MESSAGE = <<DOC
#     ░░░░██▄
#     ░░░██▀░░░░▐
#     ▌░███▄░░░░▐
#     ▌▐███░▀▄███▄▄▄██▄▄
#     ▌█████▌░░▌░░░░░░▌
#     ▌▀▀▀▌▐█░░▌░░░░░░▌
#     ▌▀▀▀▌▐█░░▌░░░░░░▌
#     ▌░░░▌░█▄░▌░░░░░░▌
# DOC

    DEFAULT_CUSTOM_MESSAGE = 'HELLO'

    class << self
      attr_accessor :custom_message
    end

    alias_method :old_run, :run_command!

    def run_command!(command)
      @custom_message ||= DEFAULT_CUSTOM_MESSAGE

      p
      p "_"*100
      p @custom_message
      p

      puts @custom_message
      old_run(command)
    end
  end
end
