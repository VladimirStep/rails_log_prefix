require 'rails_log_prefix/railtie' if defined?(Rails)
require 'rails_log_prefix/version'

require 'rails/railtie'
require 'rails/commands'
require 'rails/commands/commands_tasks'
require 'rails/commands/console'
# require 'spring/client/rails'
# require 'spring/commands/rails'
require 'rails/engine/commands_tasks'

# module RailsLogPrefix
#   class Spring::Client::Rails
#     alias_method :old_call, :call
#
#     def call
#       puts 'MY CUSTOM MESSAGE'
#       old_call
#     end
#   end
# end
#
# module RailsLogPrefix
#   class Spring::Commands::Rails
#     alias_method :old_call, :call
#
#     def call
#       puts 'MY CUSTOM MESSAGE'
#       old_call
#     end
#   end
# end


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
  class Rails::CommandsTasks
    # def run_command!(command)
    #   puts "Hello! #{command}"
    # end

    def server
      puts "HELLO SERVER"
    end

    private

    def require_command!(command)
      puts "HELLO REQUIRE COMMAND"
      require "rails/commands/#{command}"
    end
  end
end


# module RailsLogPrefix
#   class Rails::Engine::CommandsTasks
#     alias_method :old_run, :run_command!
#
#     def run_command!(command)
#       puts "Hello! #{command}"
#     end
#   end
# end



# module RailsLogPrefix
#   class Rails::Console
#     alias_method :old_start, :start
#
#     def start
#       puts 'MY CUSTOM MESSAGE'
#       old_start
#     end
#   end
# end

# module RailsLogPrefix
#   class MyRailtie < Rails::Railtie
#     console do
#       puts 'CUSTOM MESSAGE'
#     end
#
#     runner do
#       puts 'CUSTOM MESSAGE'
#     end
#   end
# end