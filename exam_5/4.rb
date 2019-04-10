# module M
#   CONST = 'Hello, world'
# end
#
# class M::C
#   def awesome_method
#     p self
#     p self.class
#     CONST
#   end
# end
# p M::C.new.awesome_method


# class C; end
# module M
#   CONST = 'Hello, world'
#
#   C.class_eval do
#     p self
#     p self.class
#     def awesome_method
#       CONST
#     end
#   end
# end
# p C.new.awesome_method


# class C
#   CONST = 'Hello, world'
# end
# module M
#   C.class_eval(<<-CODE)
#     p self
#     p self.constants
#     def awesome_method
#       CONST
#     end
#   CODE
# end
# p C.new.awesome_method rescue ''


class C
  CONST = 'Hello, world'
  def test
    CONST
  end
end
module M
  C.class_eval do
    p self
    p self.constants
    def awesome_method
      CONST
    end
  end
end
p C.new.awesome_method rescue
p C.new.test
