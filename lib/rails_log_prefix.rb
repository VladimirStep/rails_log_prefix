require 'rails_log_prefix/railtie' if defined?(Rails)
require 'rails_log_prefix/version'

# require 'rails/railtie'
# require 'rails/commands'
require 'rails/commands/commands_tasks'
# require 'rails/commands/server'


# module RailsLogPrefix
#   class Rails::Server
#     alias_method :old_start, :start
#
#     def start
#       puts 'MY CUSTOM MESSAGE'
#       old_start
#     end
#   end
# end

module RailsLogPrefix
  Rails::CommandsTasks.class_eval do
    def run_command!(command)
      puts "HELLO COMMAND"
      command = parse_command(command)

      if COMMAND_WHITELIST.include?(command)
        send(command)
      else
        run_rake_task(command)
      end
    end

    def server
      puts "HELLO SERVER"
    end
  end
end
