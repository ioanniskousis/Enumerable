require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]
int_with_nil = [1, 2, 3, 4, 3, 2, 1, nil]
puts 'TESTING my_all'
puts
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1].my_all?{ |x| x > 1 }'
puts '------all-----'
p(int_array.all? { |x| x > 1 })
puts '------my_all--'
p(int_array.my_all? { |x| x > 1 })
puts '------------------------------------------------------------------------'
puts
puts 'Trying: (1..5).my_all?{ |x| x > 3 }'
puts '------all-----'
p(range.all? { |x| x > 3 })
puts '------my_all--'
p(range.my_all? { |x| x > 3 })
puts '------------------------------------------------------------------------'
puts
puts 'Trying: %w[zero one two three four five six].my_all?{ |x| x > "aaa" }'
puts '------all-----'
p(str_array.all? { |x| x > 'aaa' })
puts '------my_all--'
p(str_array.my_all? { |x| x > 'aaa' })
puts '------------------------------------------------------------------------'
puts
puts '------NO BLOCK---'
puts 'Trying: [1, 2, 3, 4, 3, 2, 1].my_all?'
puts '------all-----'
p(int_array.all?)
puts '------my_all--'
p(int_array.my_all?)
puts '------------------------------------------------------------------------'
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, nil].my_all?'
puts '------all-----'
p(int_with_nil.all?)
puts '------my_all--'
p(int_with_nil.my_all?)
puts '------------------------------------------------------------------------'
puts
puts '------WITH ARGUMENT---'
puts 'Trying: %w[zero one two three four five six].my_all?(/..../)'
puts '------all-----'
p(str_array.all?(/..../))
puts '------my_all--'
p(str_array.my_all?(/..../))
puts
puts
