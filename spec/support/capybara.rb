require 'capybara/rspec'
require 'capybara/rails'
require 'selenium/webdriver'
require 'mkmf'
require 'capybara-screenshot/rspec'

MakeMakefile::Logging.instance_variable_set(:@logfile, '/dev/null')
Selenium::WebDriver::Chrome.driver_path = find_executable('chromedriver')

# Wait a little longer than the default 2 seconds for Ajax requests to finish
Capybara.default_max_wait_time = 15

Capybara.register_driver :selenium_chrome_headless do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w[headless disable-gpu no-sandbox window-size=1600,1200] }
  )

  Capybara::Selenium::Driver.new app,
    browser: :chrome,
    desired_capabilities: capabilities
end

Capybara.default_driver = :selenium_chrome_headless
Capybara.javascript_driver = :selenium_chrome_headless
