# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

if Rails.env.local?
  require 'rspec/core/rake_task'

  Rake::Task[:default].prerequisites.clear

  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = 'spec/**/*_spec.rb'
  end

  require 'rubocop/rake_task'
  RuboCop::RakeTask.new(:rubocop)

  task default: %i[rubocop spec]
end
