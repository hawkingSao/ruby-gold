tag = ->(t, msg) {
  p "<#{t}>#{msg}</#{t}>"
}
tag.call(:p, 'Hello, World')
