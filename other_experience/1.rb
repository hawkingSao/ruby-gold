def m
  begin
    puts "begin"
    1
  ensure
    puts "ensure"
    2
  end
end
p m

# https://docs.ruby-lang.org/ja/2.1.0/doc/spec=2fcontrol.html#begin
