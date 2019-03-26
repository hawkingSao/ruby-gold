p (1..100).each.lazy.chunk(&:even?).first(5)
p (1..100).each.lazy.chunk(&:even?).take(5).force
