#!/usr/bin/env rake

task default: %w[all_tests]

task :all_tests do
  require 'rspec/core/rake_task'
  ENV['RAILS_ENV'] = 'test'
  ENV['USE_TURNIP'] = 'true'

  RSpec::Core::RakeTask.new(:turnip) do |t|
    t.rspec_opts = " --format documentation --tag ~@wip  -r turnip_formatter --format RSpecTurnipFormatter  --out reports/#{Time.now.strftime("%H:%M_%m_%d_%Y_")}report.html"
    t.pattern    = 'spec/feature/**/*.feature'
  end
  Rake::Task['turnip'].execute
end
