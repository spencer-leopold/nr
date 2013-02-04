#!/usr/bin/env ruby
require 'optparse'

$options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: newrepo [options]"

  opts.on("-c", "--config [PATH]", String, "Config path (path to create repo)") do |c|
    $options[:config] = c
  end
end.parse!(ARGV)

def newrepo_path
  if ENV.include?('NEWREPO_PATH')
    create_path = File.expand_path ENV['NEWREPO_PATH']
  else
    create_path = File.expand_path "~/.newrepo"
  end

  create_path = $options[:config] if $options.include?(:config)

  if !File.exists?(create_path)
    raise "ERROR: Your defined deploy path (#{deploy_path}) is missing".red
  end

  create_path
rescue => e
    puts e
    abort
end

Dir.chdir newrepo_path do
  cmd = "cap #{ARGV.join(' ')}"
  system cmd
end
