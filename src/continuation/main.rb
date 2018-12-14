#!/usr/bin/ruby -w

require "continuation"
callcc {|cont|
  for i in 0..4
    print "\n#{i}: "
    for j in i*5...(i+1)*5
      cont.call() if j == 17
      printf "%3d", j
    end
  end
}
puts

f = Fiber.new {
  puts "Fiber says Hello"
  Fiber.yield
  puts "Fiber says Goodbye"
}

puts "Caller says Hello"
f.resume
puts "Caller says Goodbye"
f.resume  