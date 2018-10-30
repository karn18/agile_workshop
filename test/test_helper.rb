require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true), Minitest::Reporters::HtmlReporter.new]

require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
