require 'ripper'
require 'ripper2ruby'
require 'pp'

code= <<RUBY

  class A
    
    def hello
      "world"
    end
    
    def hello2(name)
      "hello" + name
    end
    
  end


RUBY

  sexp = Ripper::RubyBuilder.build(code)
 
puts "----------------------------------------------------------------"
pp sexp
puts "----------------------------------------------------------------"
p sexp.find_class('A')   
puts "----------------------------------------------------------------"
puts sexp.to_ruby