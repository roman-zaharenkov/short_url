# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

begin
  require 'rspec/core/rake_task'

  task('spec').clear

  namespace :spec do
    desc 'Run all unit-tests (excluding features)'
    RSpec::Core::RakeTask.new(:unit) do |t|
      t.exclude_pattern = 'spec/features/**/*'
    end

    desc 'Run all features specs'
    RSpec::Core::RakeTask.new(:features) do |t|
      t.pattern = 'spec/features/**/*_spec.rb'
    end
  end

  desc 'Run both unit and features specs'
  RSpec::Core::RakeTask.new(:spec)

  task default: :spec
rescue LoadError
  warn 'RSpec is not configured'
end
