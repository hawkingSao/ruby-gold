class C
  $val = 10
  @@val = 10
  p "Cクラスのクラス変数ID：#{@@val.object_id}"

  class << self
    $val += 5
  end
end

module B
  $val += 30
  @@val = 30
  p "Bモジュールのクラス変数ID：#{@@val.object_id}"
end

module M
  include B
  p "Mモジュールのクラス変数ID：#{@@val.object_id}"
  $val += 20
  @@val += 20


  class << C
    p $val
    p @@val
  end
end
