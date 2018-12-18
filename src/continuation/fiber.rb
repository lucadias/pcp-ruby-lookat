class FibonacciGenerator
    def initialize
      @x,@y = 0,1
      @fiber = Fiber.new do
        loop do 
          @x,@y = @y, @x+@y
          Fiber.yield @x
        end
      end
    end
  
    def next           # Return the next Fibonacci number
      @fiber.resume
    end
  
    def rewind         # Restart the sequence
      @x,@y = 0,1
    end
end

g = FibonacciGenerator.new      # Create a generator
10.times { print g.next, " " }  # Print first 10 numbers
g.rewind; puts                  # Start over, on a new line
10.times { print g.next, " " }  # Print the first 10 again

f = Fiber.new {
  puts "Fiber says Hello"
  Fiber.yield
  puts "Fiber says Goodbye"
}

puts "Caller says Hello"
f.resume
puts "Caller says Goodbye"
f.resume  