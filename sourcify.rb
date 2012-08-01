require 'sourcify'
require 'pp'
x = 1
blk1=lambda { x + y }
puts "source of a block"
puts blk1.to_source


class MyMath
  def self.sum(x, y)
    x + y # (blah)
  end
end

puts "source of a method"
puts MyMath.method(:sum).to_source

