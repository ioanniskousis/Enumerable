require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]
bool_array = [nil, false, nil, true]
nil_array = [nil, false, nil, false]
puts 'TESTING my_any'
puts
puts
puts 'Trying: ' + int_array.to_s + '.my_any?{ |x| x > 4 }'
puts '------any--'
p(int_array.any? { |x| x > 4 })
puts '------my_any--'
p(int_array.my_any? { |x| x > 4 })
puts '---------------------------------------------'
puts
puts 'Trying: (1..5).my_any?{ |x| x > 4 }'
puts '------any-----'
p(range.any? { |x| x > 4 })
puts '------my_any--'
p(range.my_any? { |x| x > 4 })
puts '---------------------------------------------'
puts
puts 'Trying: %w[zero one two three four five six].my_any?{ |x| x > "xxx" }'
puts '------any-----'
p(str_array.any? { |x| x > 'xxx' })
puts '------my_any--'
p(str_array.my_any? { |x| x > 'xxx' })
puts '---------------------------------------------'
puts
puts 'Trying: %w[zero one two three four five six].my_any?{ |x| x > "zzz" }'
puts '------any-----'
p(str_array.any? { |x| x > 'zzz' })
puts '------my_any--'
p(str_array.my_any? { |x| x > 'zzz' })
puts '---------------------------------------------'
puts
puts '------NO BLOCK---'
puts 'Trying: ' + bool_array.to_s + '.my_any?'
puts '------any-----'
p bool_array.any?
puts '------my_any--'
p bool_array.my_any?
puts '---------------------------------------------'
puts
puts 'Trying: ' + nil_array.to_s + '.my_any?'
puts '------any-----'
p nil_array.any?
puts '------my_any--'
p nil_array.my_any?
puts '---------------------------------------------'
puts
puts '------WITH ARGUMENT---'
puts 'Trying: %w[zero one two three four five six].my_any?(/[a-d]/)'
puts '------any-----'
p %w[zero one two three four five six].any?(/[a-d]/)
puts '------my_any--'
p %w[zero one two three four five six].my_any?(/[a-d]/)
puts
puts 'Trying: %w[zero one two three four five six].my_any?(/[f]/)'
puts '------any-----'
p %w[zero one two three four five six].any?(/[f]/)
puts '------my_any--'
p %w[zero one two three four five six].my_any?(/[f]/)
puts
puts
