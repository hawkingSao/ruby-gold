require 'test/unit'
require 'foo'

class TestFoo < Test::Unit::TestCase
  def setup
    @foo = Foo.new
  end

  def teardown; end

  def test_foo
    assert_equal('foo', @foo.foo)
  end

  def test_hello
    assert_equal('Hello world', @foo.hello('world'))
  end
end
