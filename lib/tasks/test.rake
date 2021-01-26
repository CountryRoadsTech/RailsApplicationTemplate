desc 'Run RSpec tests and Brakeman security analysis.'
task :test do
  require 'brakeman'

  # Run RSpec tests.
  Rake::Task['spec'].reenable
  Rake::Task['spec'].invoke
  # Run Brakeman static security analysis.
  Brakeman.run app_path: '.', print_report: true
end
