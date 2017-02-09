require 'rails_log_prefix/version'
require 'rails/commands/commands_tasks'

module RailsLogPrefix

  DEFAULT_CUSTOM_MESSAGE = <<DOC
    ░░░░██▄
    ░░░██▀░░░░▐
    ▌░███▄░░░░▐
    ▌▐███░▀▄███▄▄▄██▄▄
    ▌█████▌░░▌░░░░░░▌
    ▌▀▀▀▌▐█░░▌░░░░░░▌
    ▌▀▀▀▌▐█░░▌░░░░░░▌
    ▌░░░▌░█▄░▌░░░░░░▌
DOC

  Rails::CommandsTasks.class_eval do
    alias_method :old_run, :run_command!

    def run_command!(command)
      puts DEFAULT_CUSTOM_MESSAGE
      old_run(command)
    end
  end
end
