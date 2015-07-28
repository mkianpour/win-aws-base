# spec_helper.rb
require 'chefspec'
require 'chefspec/berkshelf'
ChefSpec::Coverage.start!

RSpec.configure do |config|
  config.color = true
  config.raise_errors_for_deprecations!

  config.filter_run_excluding broken: true
  config.filter_run_excluding turn_off: true
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
  config.filter_run_excluding :slow unless ENV['SLOW_SPECS']
end
