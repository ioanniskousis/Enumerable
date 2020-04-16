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
puts '------WITH ARGUMENT REGEX---'
puts 'Trying: %w[zero one two three four five six].my_all?(/..../)'
puts '------all-----'
p(str_array.all?(/..../))
puts '------my_all--'
p(str_array.my_all?(/..../))
puts '------------------------------------------------------------------------'
puts
puts '------WITH ARGUMENT STRING---'
puts 'Trying: %w[six six six six].my_all?("six")'
puts '------all-----'
p(%w[six six six six].all?('six'))
puts '------my_all--'
p(%w[six six six six].my_all?('six'))
puts '------------------------------------------------------------------------'
puts
puts '------WITH ARGUMENT NUMBER---'
puts 'Trying: [1, 1, 1, 1].my_all?(1)'
puts '------all-----'
p([1, 1, 1, 1].all?(1))
puts '------my_all--'
p([1, 1, 1, 1].my_all?(1))
puts '------------------------------------------------------------------------'
puts
puts '------WITH ARGUMENT CLASS---'
puts 'Trying: [1, 1, 1, 1].my_all?(Integer)'
puts '------all-----'
p([1, 1, 1, 1].all?(1))
puts '------my_all--'
p([1, 1, 1, 1].my_all?(1))
puts
puts 'Trying: [1, 1, 1, 1.6].my_all?(Integer)'
puts '------all-----'
p([1, 1, 1, 1.6].all?(1))
puts '------my_all--'
p([1, 1, 1, 1.6].my_all?(1))
puts
puts 'Trying: %w[zero one two three four five six].my_all?(String)'
puts '------all-----'
p(%w[zero one two three four five six].all?(String))
puts '------my_all--'
p(%w[zero one two three four five six].my_all?(String))
puts
puts 'Trying: [1, 1, 1, 1].my_all?(Array)'
puts '------all-----'
p([[1, 2, 3], [2, 3, 1], [1, 1]].all?(Array))
puts '------my_all--'
p([[1, 2, 3], [2, 3, 1], [1, 1]].my_all?(Array))
puts
puts '------------------------------------------------------------------------'
puts
puts '------WITH ARGUMENT OBJECT---'
puts 'Trying: [[1, 1], [1, 1], [1, 1]].my_all?([1, 1])'
puts '------all-----'
p([[1, 1], [1, 1], [1, 1]].all?([1, 1]))
puts '------my_all--'
p([[1, 1], [1, 1], [1, 1]].my_all?([1, 1]))
puts
puts 'Trying: [{ a: 1 }, { a: 1 }, { a: 1 }].my_all?({ a: 1 })'
puts '------all-----'
p([{ a: 1 }, { a: 1 }, { a: 1 }].all?({ a: 1 }))
puts '------my_all--'
p([{ a: 1 }, { a: 1 }, { a: 1 }].my_all?({ a: 1 }))
puts
puts 'Trying: [{ a: 1 }, { a: 1 }, { a: 2 }].my_all?({ a: 1 })'
puts '------all-----'
p([{ a: 1 }, { a: 1 }, { a: 2 }].all?({ a: 1 }))
puts '------my_all--'
p([{ a: 1 }, { a: 1 }, { a: 2 }].my_all?({ a: 1 }))
puts
puts
