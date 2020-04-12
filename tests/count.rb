require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six six six]
nil_array = [nil, false]
not_nil_array = [nil, false, ""]

puts 'Trying: ' + int_array.to_s + '.my_count{ |x| x > 3 }'
puts "------count-----"
p int_array.count{ |x| x > 3 }
puts "------my_count--"
p int_array.my_count{ |x| x > 3 }
puts "------------------------------------------------------------------------"
puts
puts 'Trying: (' + range.to_s + ').my_count{ |x| x > 3 }'
puts "------count-----"
p range.count{ |x| x > 3 }
puts "------my_count--"
p range.my_count{ |x| x > 3 }
puts "------------------------------------------------------------------------"
puts
puts 'Trying: ' + str_array.to_s + '.my_count{ |x| x > "four" }'
puts "------count-----"
p str_array.count{ |x| x > "four" }
puts "------my_count--"
p str_array.my_count{ |x| x > "four" }
puts "------------------------------------------------------------------------"
puts
puts "------NO BLOCK---"
puts 'Trying: ' + int_array.to_s + '.my_count'
puts "------count--"
p int_array.count
puts "------my_count--"
p int_array.my_count
puts
puts 'Trying: ' + nil_array.to_s + '.my_count'
puts "------count--"
p nil_array.count
puts "------my_count--"
p nil_array.my_count
puts
puts 'Trying: ' + not_nil_array.to_s + '.my_count'
puts "------count--"
p not_nil_array.count
puts "------my_count--"
p not_nil_array.my_count
puts "------------------------------------------------------------------------"
puts
puts "------WITH ARGUMENT---"
puts 'Trying: ' + str_array.to_s + '.my_count("six")'
puts "------count--"
p str_array.count("six")
puts "------my_count--"
p str_array.my_count("six")
puts
puts 'Trying: ' + int_array.to_s + '.my_count(1)'
puts "------count--"
p int_array.count(1)
puts "------my_count--"
p int_array.my_count(1)
puts
puts
