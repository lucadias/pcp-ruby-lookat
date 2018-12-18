#!/usr/bin/ruby -w
require 'continuation'
$labels = {}

def label(label_name)
  callcc { |continuation|   $labels[label_name] = continuation }
end

def goto(label_name)
  unless $labels.has_key? label_name
    raise "No label #{label_name}"
  end
  $labels[label_name].call
end

i = 1
puts "entering loop"
label "loop"
if i < 10
  puts i
  i += 1
  goto "loop"
end
puts "loop done"
puts "i is #{i}"

# https://max.computer/blog/delimited-continuations-in-ruby-part-1/