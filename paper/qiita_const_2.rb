class C
  Foo = 'Foo'
  module ::M  # トップレベルに定義する（Cとは無関係）
    p Module.nesting
    puts Foo  # ネストの外側にあるFooを探索する
  end
end
