require "rubygems"
require "rspec"

class Fibonacci



def output(n)
        if n <= 1 then
          return n
        else
          return output(n-1) + output(n-2)
    end
  end
end




describe Fibonacci do
  context "testing basic Fibonacci numbers." do
    it "should return 0 for 0 input" do
      fib = Fibonacci.new
      result = fib.output(0)
      result.should == 0
    end
     it "should return 1 for 1 input" do
        fib = Fibonacci.new
        result = fib.output(1)
        result.should == 1
      end
      
       it "should return 1 for 2 input" do
          fib = Fibonacci.new
          result = fib.output(2)
          result.should == 1
        end
        
         it "should return 5 for 5 input" do
            fib = Fibonacci.new
            result = fib.output(5)
            result.should == 5
          end
        
  end
end

