require 'rails_log_prefix/version'
require 'rails/commands/commands_tasks'

module RailsLogPrefix
  Rails::CommandsTasks.class_eval do

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

    class << self
      attr_accessor :custom_message
    end

    alias_method :old_run, :run_command!

    def run_command!(command)
      @custom_message ||= DEFAULT_CUSTOM_MESSAGE
      puts @custom_message
      old_run(command)
    end
  end
end
