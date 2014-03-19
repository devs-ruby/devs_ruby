require 'test_helper'
require 'minitest/autorun'
require 'devs_ruby'

class TestDEVSRuby < MiniTest::Test
  def test_should_have_a_version
    assert_nothing_raised { DEVSRuby::VERSION }
  end

  def test_should_have_same_version_as_devs
    assert_equal DEVS.version, DEVSRuby::VERSION
  end
end
