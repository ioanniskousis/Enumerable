require_relative 'include_enumerable'

def multiply_els(arr)
  arr.my_inject(:*)
end

puts 'TESTING multiply_els'
puts
puts
puts 'Trying multiply_els([2,4,5])'
p multiply_els([2, 4, 5])
puts
puts
puts
