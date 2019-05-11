# https://qiita.com/fursich/items/a1b742795cf10eebc73f
MyConst = 'TOPLEVEL'

class Parent
  MyConst = 'Parent'
end

module NameSpace
  MyConst = 'NameSpace'
end

module MonkeyPatch
  MyConst = 'MonkeyPatch'
end

module NameSpace
  class Child < Parent
    prepend MonkeyPatch

    def put_myconst_at_base
      puts ::MyConst
    end

    def put_myconst
      puts MyConst
    end

    def put_myconst_with_child
      puts ::NameSpace::Child::MyConst
    end

    def put_anything(arg)
      puts arg
    end
  end
end

# 問題1
NameSpace::Child.new.put_myconst_at_base

# 問題2
NameSpace::Child.new.put_myconst

# 問題3
NameSpace::Child.new.put_myconst_with_child

# 問題4
NameSpace::Child.new.put_anything(MyConst)

# 問題5
NameSpace::Child.class_eval { puts MyConst }
