require 'spec_helper'
require 'rails_log_prefix'

RSpec.describe RailsLogPrefix do
  it 'has a version number' do
    expect(RailsLogPrefix::VERSION).not_to be nil
  end
end

RSpec.describe 'CLI output' do
  let(:exe) { File.expand_path('../../spec/dummy/bin/rails', __FILE__) }

  describe 'server' do
    let(:cmd) { "#{exe} server" }
    let(:process) { CliProcess.new(cmd) }
    let(:new_message) { 'Buy' }

    # before { RailsLogPrefix.custom_message = 'Buy' }
    # before(:each) { Rails::CommandsTasks.class_variable_set :@custom_message, Rails::CommandsTasks::DEFAULT_CUSTOM_MESSAGE }
    it 'has default custom message' do

      p
      p '='*100
      p RailsLogPrefix::DEFAULT_CUSTOM_MESSAGE

      # RailsLogPrefix::Rails::CommandsTasks.custom_message.should eq(RailsLogPrefix::Rails::CommandsTasks::DEFAULT_CUSTOM_MESSAGE)
      expect(process).to have_output(RailsLogPrefix::DEFAULT_CUSTOM_MESSAGE)

      # FIXME: Please extend!

      process.kill
      process.wait
    end

    before { Rails::CommandsTasks.custom_message = new_message }
    it 'should allow to set new message' do


      p
      p '-'*100
      p Rails::CommandsTasks.custom_message

      expect(process).to have_output(Rails::CommandsTasks.custom_message)

      process.kill
      process.wait
    end
  end
end