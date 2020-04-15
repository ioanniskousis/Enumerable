require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]
nil_array = [nil, false]
not_nil_array = [nil, false, '']

puts 'Trying: [1, 2, 3, 4, 3, 2, 1].my_none?{ |x| x > 4 }'
puts '------none-----'
p(int_array.none? { |x| x > 4 })
puts '------my_none--'
p(int_array.my_none? { |x| x > 4 })
puts '------------------------------------------------------------------------'
puts
puts 'Trying: (1..5).my_none?{ |x| x > 4 }'
puts '------none-----'
p(range.none? { |x| x > 4 })
puts '------my_none--'
p(range.my_none? { |x| x > 4 })
puts '------------------------------------------------------------------------'
puts
puts 'Trying: %w[zero one two three four five six].my_none?{ |x| x > "xxx" }'
puts '------none-----'
p(str_array.none? { |x| x > 'xxx' })
puts '------my_none--'
p(str_array.my_none? { |x| x > 'xxx' })
puts '------------------------------------------------------------------------'
puts
puts '------NO BLOCK---'
puts 'Trying: [1, 2, 3, 4, 3, 2, 1].my_none?'
puts '------none--'
p int_array.none?
puts '------my_none--'
p int_array.my_none?
puts
puts 'Trying: [nil, false].my_none?'
puts '------none--'
p nil_array.none?
puts '------my_none--'
p nil_array.my_none?
puts
puts 'Trying: [nil, false, ""].my_none?'
puts '------none--'
p not_nil_array.none?
puts '------my_none--'
p not_nil_array.my_none?
puts '------------------------------------------------------------------------'
puts
puts '------WITH ARGUMENT---'
puts 'Trying: %w[zero one two three four five six].my_none?(/[a-d]/)'
puts '------none--'
p str_array.none?(/[a-d]/)
puts '------my_none--'
p str_array.my_none?(/[a-d]/)
puts
puts 'Trying: %w[zero one two three four five six].my_none?(/[f]/)'
puts '------none--'
p str_array.none?(/[f]/)
puts '------my_none--'
p str_array.my_none?(/[f]/)
puts
puts
