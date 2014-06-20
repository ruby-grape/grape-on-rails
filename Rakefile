#!/usr/bin/env rake

require File.expand_path('../config/application', __FILE__)

GrapeOnRails::Application.load_tasks

if Rails.env.test? || Rails.env.development?
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:test) do |spec|
    # do not run integration tests, doesn't work on TravisCI
    spec.pattern = FileList['spec/api/*_spec.rb', 'spec/controllers/*_spec.rb', 'spec/helpers/*_spec.rb', 'spec/views/*_spec.rb']
  end

  Rake::Task[:default].prerequisites.clear

  require 'rubocop/rake_task'
  RuboCop::RakeTask.new(:rubocop)

  task default: [:rubocop, :test]
end
