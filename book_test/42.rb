f = Fiber.new {
  print 'A '
  Fiber.yield 'B '
  print 'C '
}

print 'D '
print f.resume
print 'E '
