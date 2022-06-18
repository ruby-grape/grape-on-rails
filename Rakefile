# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

if Rails.env.test? || Rails.env.development?
  require 'rspec/core/rake_task'

  Rake::Task[:default].prerequisites.clear

  require 'rubocop/rake_task'
  RuboCop::RakeTask.new(:rubocop)

  task default: %i[rubocop spec]
end
