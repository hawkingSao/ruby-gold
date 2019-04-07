class IPAddr
  include Enumerable

  def initialize(ip_addr)
    @ip_addr = ip_addr
  end

  def each
    p "============"
    p block_given?
    p "============"
    return to_enum unless block_given?

    @ip_addr.split('.').each do |octet|
      p 111
      p octet
      p 222
      yield octet
    end
  end
end

addr = IPAddr.new("192.10.20.30")
enum = addr.each
p 222222222222222

p enum.next # 192と表示される
p enum.next # 10と表示される
p enum.next # 20と表示される
p enum.next # 30と表示される
