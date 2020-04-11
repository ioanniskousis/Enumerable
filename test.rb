require_relative 'enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]

# puts "----each------"
# p int_array.each{ |x| print "#{x} | "  }
# puts "----my_each---"
# p int_array.my_each{ |x| print "#{x} | " }
# puts
# puts "----each------"
# p range.each{ |x| print "#{x} | " }
# puts "----my_each---"
# p range.my_each{ |x| print "#{x} | " }
# puts
# puts "----each------"
# p str_array.each{ |x| print "#{x} | " }
# puts "----my_each---"
# p str_array.my_each{ |x| print "#{x} | " }
# puts
# puts "----NO BLOCK--"
# p int_array.my_each
# p range.my_each
# p str_array.my_each

# puts "------each_with_index-----"
# p int_array.each_with_index{ |x, i| print "#{i} => #{x} | " }
# puts "------my_each_with_index--"
# p int_array.my_each_with_index{ |x, i| print "#{i} => #{x} | " }
# puts
# puts "------each_with_index-----"
# p range.each_with_index{ |x, i| print "#{i} => #{x} | " }
# puts "------my_each_with_index--"
# p range.my_each_with_index{ |x, i| print "#{i} => #{x} | " }
# puts
# puts "------each_with_index-----"
# p str_array.each_with_index{ |x, i| print "#{i} => #{x} | " }
# puts "------my_each_with_index--"
# p str_array.my_each_with_index{ |x, i| print "#{i} => #{x} | " }
# puts
# puts "------NO BLOCK------------"
# p int_array.my_each_with_index
# p range.my_each_with_index
# p str_array.my_each_with_index

puts "------select-----"
p int_array.select{ |x| x < 3 }
puts "------my_select--"
p int_array.my_select{ |x| x < 3 }
puts
puts "------select-----"
p range.select{ |x| x < 3 }
puts "------my_select--"
p range.my_select{ |x| x < 3 }
puts
puts "------select-----"
p str_array.select{ |x| x < "t" }
puts "------my_select--"
p str_array.my_select{ |x| x < "t" }
puts
puts "------NO BLOCK---"
p int_array.my_select
p range.my_select
p str_array.my_select
