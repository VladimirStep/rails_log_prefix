require 'rails_log_prefix/railtie' if defined?(Rails)
require 'rails_log_prefix/version'
require 'rails/commands/commands_tasks'

module RailsLogPrefix
  Rails::CommandsTasks.class_eval do
    alias_method :old_run, :run_command!
    CUSTOM_MESSAGE = <<DOC
    ░░░░██▄
    ░░░██▀░░░░▐
    ▌░███▄░░░░▐
    ▌▐███░▀▄███▄▄▄██▄▄
    ▌█████▌░░▌░░░░░░▌
    ▌▀▀▀▌▐█░░▌░░░░░░▌
    ▌▀▀▀▌▐█░░▌░░░░░░▌
    ▌░░░▌░█▄░▌░░░░░░▌
DOC

    def run_command!(command)
      puts CUSTOM_MESSAGE
      old_run(command)
    end
  end
end
