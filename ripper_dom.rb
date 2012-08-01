require 'ripper'
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
  
  A.new.hello
  A.new.hello2("mario")
  A.new.hello2 "paolo"
  
RUBY

sexp=Ripper.sexp(code)

pp sexp