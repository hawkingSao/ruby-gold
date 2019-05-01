t1 = Thread.start do
  begin
    raise ThreadError
  rescue
    p 111
  end
end
p 222
