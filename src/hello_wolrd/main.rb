#!/usr/bin/ruby -w

END {
	puts "Code in the END statement is called at the end of the program."
}

puts "Hello World with Ruby!";

# Single line Comments can be made with a hashtag.
=begin
Multiline comments starts with and with "= begin" (without the space) and end with "= end" (without the space)
=end

BEGIN {
	puts "Code in the BEGIN statement is called before the program is run."
}