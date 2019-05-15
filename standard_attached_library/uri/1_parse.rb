require 'uri'

uri = URI.parse('http://www.ruby-lang.org/ja/man/html/index.html')
p uri #=> #<URI::HTTP:0x007fba51004368 URL:http://www.ruby-lang.org/ja/man/html/index.html>

p uri.scheme #=> "http"
p uri.host #=> "www.ruby-lang.org"
p uri.port #=> 80
p uri.path #=> "/ja/man/html/index.html"
