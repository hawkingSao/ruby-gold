require 'uri'

uri = 'http://www.example.com/Ruby%E6%8A%80%E8%A1%93%E8%80%85%E8%A9%A6%E9%A8%93%E5%AF%BE%E7%AD%96%E6%95%99%E7%A7%91%E6%9B%B8'

parsed_uri = URI.parse(uri)
p URI.decode_www_form_component(parsed_uri.path[1..-1])
#=> "Ruby技術者試験対策教科書"
