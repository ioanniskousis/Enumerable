require_relative 'include_enumerable'

a = [1, 2, 3, 4, 5]
puts
puts '------USING A BLOCK---'
puts 'Testing: ' + a.to_s + '.my_map{ |x,i| i % 2 == 0 ? x + 10 : x + 20 }'
p a.my_map { |x, i| (i % 2).zero? ? x + 10 : x + 20 }
puts
puts '------NO BLOCK---'
puts 'Testing: ' + a.to_s + '.my_map'
p a.my_map
puts
puts
