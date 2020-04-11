require_relative 'enumerable'

array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)

p array.my_each{ |x| puts x }
puts
p range.my_each{ |x| puts x }


