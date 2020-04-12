require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]

puts "----each------"
p int_array.each{ |x| print "#{x} | "  }
puts "----my_each---"
p int_array.my_each{ |x| print "#{x} | " }
puts
puts "----each------"
p range.each{ |x| print "#{x} | " }
puts "----my_each---"
p range.my_each{ |x| print "#{x} | " }
puts
puts "----each------"
p str_array.each{ |x| print "#{x} | " }
puts "----my_each---"
p str_array.my_each{ |x| print "#{x} | " }
puts
puts "----NO BLOCK--"
p int_array.my_each
p range.my_each
p str_array.my_each
puts
puts
