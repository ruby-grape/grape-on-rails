#!/usr/bin/env rake
require File.expand_path('config/application', __dir__)

GrapeOnRails::Application.load_tasks

if Rails.env.test? || Rails.env.development?
  require 'rspec/core/rake_task'

  Rake::Task[:default].prerequisites.clear

  require 'rubocop/rake_task'
  RuboCop::RakeTask.new(:rubocop)

  task default: %i[rubocop spec]
end
