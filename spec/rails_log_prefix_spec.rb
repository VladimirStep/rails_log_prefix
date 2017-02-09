require 'spec_helper'

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

    it 'has default custom message' do
      expect(process).to have_output(RailsLogPrefix::DEFAULT_CUSTOM_MESSAGE.gsub("\n", "\r\n"))
      process.kill
      process.wait
    end
  end

  describe 'console' do
    let(:cmd) { "#{exe} console" }
    let(:process) { CliProcess.new(cmd) }

    it 'has default custom message' do
      expect(process).to have_output(RailsLogPrefix::DEFAULT_CUSTOM_MESSAGE.gsub("\n", "\r\n"))
      process.kill
      process.wait
    end
  end

  describe '--help' do
    let(:cmd) { "#{exe} --help" }
    let(:process) { CliProcess.new(cmd) }

    it 'has default custom message' do
      expect(process).to have_output(RailsLogPrefix::DEFAULT_CUSTOM_MESSAGE.gsub("\n", "\r\n"))
      process.kill
      process.wait
    end
  end
end