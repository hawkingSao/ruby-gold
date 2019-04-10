class C
  @@val = 10

  class << self
    @@val = 5
  end
end

module B
  @@val = 30
end

module M
  include B
  @@val = 20

  class << C
    p @@val
  end
end
