require_relative 'enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]

# p int_array.my_each{ |x| puts x }
# puts
# p int_array.my_each{ |x| puts x }
# p str_array.my_each{ |x| puts x }

# p int_array.each_with_index{ |x, i| puts "#{i} => #{x}" }
# puts
p int_array.my_each_with_index{ |x, i| puts "#{i} => #{x}" }
puts "------"
# p range.each_with_index{ |x, i| puts "#{i} => #{x}" }
# puts
p range.my_each_with_index{ |x, i| puts "#{i} => #{x}" }
puts "------"
# p str_array.each_with_index{ |x, i| puts "#{i} => #{x}" }
# puts
p str_array.my_each_with_index{ |x, i| puts "#{i} => #{x}" }
