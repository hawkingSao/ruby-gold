class C1
  p Module.nesting
  MSG = 123
  MSG2 = 456

  class C2
    p Module.nesting
    MSG = 111
    p MSG
    p MSG2
  end

  p MSG
  p MSG2
end
