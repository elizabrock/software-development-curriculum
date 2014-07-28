#MiniTest
##Overview
MiniTest, starting in Ruby 1.9, is a small, fast unit testing framework which includes unit, spec, mock, and benchmark testing.
https://github.com/seattlerb/minitest
###Unit
Unit testing is a small and fast framework with a multitude of assertions for clean and readable tests
~~~
require 'minitest/autorun'

class TestHipster < MiniTest::Unit::TestCase
  def setup
    @hipster = Hipster.new
    @labels  = Array.new
    @traits  = ["silly hats", "skinny jeans"]
  end

  def teardown
    @hipster.destroy!
  end

  def test_for_helvetica_font
    assert_equal "helvetica!", @hipster.preferred_font
  end

  def test_not_mainstream
    refute @hipster.mainstream?
  end
end
~~~
###Spec
Spec testing is built on top of unit testing, and allows you to use spec expectations.
~~~
require 'minitest/autorun'

describe Hipster, "Demonstration of MiniTest" do

  # Runs codes before each expectation
  before do
    @hipster = Hipster.new
  end

  # Runs code after each expectation
  after do
    @hipster.destroy!
  end

  # Define accessors - lazily runs code when it's first used
  let(:hipster) { Hipster.new}
  let(:traits) { ["silly hats", "skinny jeans"] }
  let(:labels) { Array.new }

  # Even lazier accessor - assigns `subject` as the name for us
  # this equivalent to let(:subject) { Hipster.new }
  subject { Hipster.new }

  it "#define" do
    hipster.define.must_equal "you wouldn't understand"
  end

  it "#walk?" do
    skip "I prefer to skip"
  end

  describe "when asked about the font" do
    it "should be helvetica" do
      @hipster.preferred_font.must_equal "helvetica"
    end
  end

  describe "when asked about mainstream" do
    it "won't be mainstream" do
      @hipster.mainstream?.wont_equal true
    end
  end
end
~~~
###Mock
Mock testing is an object factory that is controlled by defined expectations. There are three arguments, the first being the method's name, the second is the return value, and the third being an optional argument for the type of argument the method takes.
~~~
require 'minitest/autorun'

# Make all of our Twitter updates hip
class Twipster
  def initialize(twitter)
    @twitter = twitter # A Twitter API client
  end

  def tweet(message)
    @twitter.update("#{message} #lolhipster")
  end
end

# Uses Mock#expect and Mock#verify
describe Twipster, "Make every tweet a hipster tweet." do
  before do
    @twitter  = MiniTest::Mock.new # Mock our Twitter API client
  end

  let(:twipster) { Twipster.new(@twitter) }
  let(:message) { "Skyrim? Too mainstream."}

  it "should append a #lolhipster hashtag and update Twitter with our status" do
    @twitter.expect :update, true, ["#{message} #lolhipster"]
    @twipster.tweet(message)

    assert @twitter.verify # verifies tweet and hashtag was passed to `@twitter.update`
  end
end
~~~
###Benchmark
A handy feature of MiniTest is the performance benchmarking assertions. Here's an example testing a couple of methods that are constant and linear in time as a function of their inputs:
~~~
require 'rubygems'
require 'minitest/benchmark'
require 'minitest/autorun'

class Thing
  def constant_time_method(n)
    true # O(1)
  end

  def linear_time_method(n)
    n.times { |i| constant_time_method(i) } # O(n)
  end
end

class AwesomeTest < MiniTest::Unit::TestCase
  def setup
    @thing = Thing.new
  end

  def test_constant_time_method_performance
    assert_performance_constant 0.99999 do |n|
     @thing.constant_time_method(n)
    end
  end

  def test_linear_time_method_performance
    assert_performance_linear 0.9999 do |n|
      @thing.linear_time_method(n)
    end
  end
end
~~~
###Time To Test!
Include this somewhere in your code, if not already present!
~~~
  require 'rake/testtask'

  Rake::TestTask.new do |t|
    t.libs = ["lib"]
    t.warning = true
    t.verbose = true
    t.test_files = FileList['spec/*_spec.rb']
  end
~~~
Now all you have to do is type "rake" and your tests should now run! Congratulations, you understand minitesting!


#Sources
https://github.com/seattlerb/minitest
http://mattsears.com/articles/2011/12/10/minitest-quick-reference
http://recipes.sinatrarb.com/p/testing/minitest
http://www.rubyinside.com/a-minitestspec-tutorial-elegant-spec-style-testing-that-comes-with-ruby-5354.html
