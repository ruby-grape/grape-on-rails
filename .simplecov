# frozen_string_literal: true

if ENV['CI'] # only when running CI
  require 'simplecov-lcov'
  SimpleCov::Formatter::LcovFormatter.config do |c|
    c.report_with_single_file = true
    c.single_report_path = 'coverage/lcov.info'
  end

  SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter
end

SimpleCov.start 'rails' do
  enable_coverage :branch
  add_filter '/spec/'
  # unused Rails scaffolding: this app only mounts a Grape API, no ActiveRecord models,
  # jobs, mailers, or channels are actually used
  add_filter 'app/channels/'
  add_filter 'app/jobs/'
  add_filter 'app/mailers/'
  add_filter 'app/models/'
end
