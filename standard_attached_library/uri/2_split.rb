require 'uri'

uri = URI.split('http://www.ruby-lang.org/ja/man/html/index.html')
p uri #=> ["http", nil, "www.ruby-lang.org", nil, nil, "/ja/man/html/index.html", nil, nil, nil]
