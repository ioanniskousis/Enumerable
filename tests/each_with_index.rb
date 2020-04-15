require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]
puts 'TESTING my_each_with_index'
puts
puts
puts "Trying: [1, 2, 3, 4, 3, 2, 1].my_each_with_index { |x, i| print 'i => x | ' }"
puts '------each_with_index-----'
p(int_array.each_with_index { |x, i| print "#{i} => #{x} | " })
puts '------my_each_with_index--'
p(int_array.my_each_with_index { |x, i| print "#{i} => #{x} | " })
puts '------------------------------------------------------------------------'
puts
puts "Trying: (1..5).my_each_with_index { |x, i| print 'i => x | ' }"
puts '------each_with_index-----'
p(range.each_with_index { |x, i| print "#{i} => #{x} | " })
puts '------my_each_with_index--'
p(range.my_each_with_index { |x, i| print "#{i} => #{x} | " })
puts '------------------------------------------------------------------------'
puts
puts "Trying: %w[zero one two three four five six].my_each_with_index { |x, i| print 'i => x | ' }"
puts '------each_with_index-----'
p(str_array.each_with_index { |x, i| print "#{i} => #{x} | " })
puts '------my_each_with_index--'
p(str_array.my_each_with_index { |x, i| print "#{i} => #{x} | " })
puts '------------------------------------------------------------------------'
puts
puts '------NO BLOCK------------'
puts 'Trying: [1, 2, 3, 4, 3, 2, 1].my_each_with_index'
puts '------each_with_index-----'
p int_array.each_with_index
puts '------my_each_with_index--'
p int_array.my_each_with_index
puts '------------------------------------------------------------------------'
puts
puts 'Trying: (1..5).my_each_with_index'
puts '------each_with_index-----'
p range.each_with_index
puts '------my_each_with_index--'
p range.my_each_with_index
puts '------------------------------------------------------------------------'
puts
puts 'Trying: %w[zero one two three four five six].my_each_with_index'
puts '------each_with_index-----'
p str_array.each_with_index
puts '------my_each_with_index-----'
p str_array.my_each_with_index
puts '------------------------------------------------------------------------'
puts
puts
