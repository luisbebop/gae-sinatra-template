require "minitest/autorun"
require_relative "../lib/foo"

class TestFoo < Minitest::Test
  
  def setup    
    @bar = Foo::Bar.new
  end

  def test_version
    assert_equal "0.0.1", Foo::VERSION
  end
  
  def test_new
    assert_equal 1, @bar.foobar
  end
      
end