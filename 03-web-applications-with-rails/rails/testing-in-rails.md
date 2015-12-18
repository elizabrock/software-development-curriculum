# Testing In Rails

## Unit Testing Tools

### Unit Testing Libraries

[MiniTest](https://github.com/seattlerb/minitest), and [RSpec](http://rspec.info/) can both be used to unit test in Rails, just as in other Ruby applications. RSpec has historically been the more popular choice.

### Shoulda

[Shoulda](https://github.com/thoughtbot/shoulda) is a library of test extension that make it quick and easy to test ActiveRecord models.

## Integration Testing Tools

### Integration Testing Libraries

The options for integration testing are [Rails/TestUnit Integration](http://guides.rubyonrails.org/testing.html#integration-testing) (not recommended), [Cucumber](https://cucumber.io/), and [RSpec feature specs](https://www.relishapp.com/rspec/rspec-rails/docs/feature-specs/feature-spec) (recommended).

### Headless Browser

Regardless of integration testing library, you will end up using [Capybara](https://github.com/jnicklas/capybara) as the interface between you and the virtual browser.

* Read the capybara README and checkout out their rdoc: https://github.com/jnicklas/capybara
* Pull up the Capybara Cheatsheet: https://gist.github.com/zhengjia/428105

### Fabricating Test Data

* [Fabrication](http://www.fabricationgem.org/) generates valid ActiveRecord objections based on recipes that you create.  A must-have for setting up data in tests.
* [Faker](https://github.com/stympy/faker) generates real-looking fake data for use in development, or tests.

### Maintaining the test database

Database Cleaner
http://tomdallimore.com/blog/taking-the-test-trash-out-with-databasecleaner-and-rspec/?utm_source=rubyweekly&utm_medium=email

### Time Travel

[Timecop](https://github.com/travisjeffery/timecop) is the historically preferred gem.  However, [ActiveSupport::Testing::TimeHelpers](http://api.rubyonrails.org/classes/ActiveSupport/Testing/TimeHelpers.html) now provides similar functionality, built into Rails.

### Testing API Integrations and External Requests

* [VCR](https://github.com/vcr/vcr) is a tool for recording and replaying requests to external web services.  Typically used with Webmock to test API integrations.
* [Webmock](https://github.com/bblimke/webmock) is used to block access to external applications (your tests shouldn't hit live servers on the internet!), and to mock out those requests so that your application's API integrations can be tested.
