class Base
  CONST = "Hello, world"
end

class C < Base
end

module P
  CONST = "Good, night"
end

class Base
  prepend P
end

module M
  class C
    CONST = "Good, evening"
  end
end

module M
  class ::C
    def greet
      CONST
    end
  end
end

p C.ancestors
p C.superclass
p Base.ancestors
p C.new.greet
# [Ruby] 定数の探索経路-[1]
# https://qiita.com/ksh-fthr/items/c6ec6c378ab339bc7cd1
