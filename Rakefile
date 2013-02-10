#!/usr/bin/env rake

require File.expand_path('../config/application', __FILE__)

GrapeOnRails::Application.load_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  # do not run integration tests, doesn't work on TravisCI
  spec.pattern = FileList['spec/api/*_spec.rb']
end

task :default => :spec
