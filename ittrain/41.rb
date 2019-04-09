module M
  def foo
    puts Const
  end
end

class Foo
  Const = "foo"
  include M
end
Foo.new.foo
