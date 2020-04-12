require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]

puts "------any-----"
p int_array.any?{ |x| x > 4 }
puts "------my_any--"
p int_array.my_any?{ |x| x > 4 }
puts
puts "------any-----"
p range.any?{ |x| x > 4 }
puts "------my_any--"
p range.my_any?{ |x| x > 4 }
puts
puts "------any-----"
p str_array.any?{ |x| x > "xxx" }
puts "------my_any--"
p str_array.my_any?{ |x| x > "xxx" }
puts
puts "------NO BLOCK---"
p int_array.my_any?
puts "------WITH ARGUMENT---"
p %w[zero one two three four five six].my_any?(/[a-d]/)
p %w[zero one two three four five six].my_any?(/[f]/)
puts
puts
