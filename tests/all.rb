require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]

puts "------all-----"
p int_array.all?{ |x| x > 0 }
puts "------my_all--"
p int_array.my_all?{ |x| x > 0 }
puts
puts "------all-----"
p range.all?{ |x| x > 0 }
puts "------my_all--"
p range.my_all?{ |x| x > 0 }
puts
puts "------all-----"
p str_array.all?{ |x| x > "aaa" }
puts "------my_all--"
p str_array.my_all?{ |x| x > "aaa" }
puts
puts "------NO BLOCK---"
p int_array.my_all?
puts
puts "------WITH ARGUMENT---"
p str_array.my_all?(/..../)
puts
puts
