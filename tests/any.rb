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
puts '------WITH ARGUMENT REGEX---'
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
puts '------WITH ARGUMENT STRING---'
puts 'Trying: %w[cow zero one two three four five six 3 34].my_any?("cow")'
puts '------any-----'
p %w[cow zero one two three four five six 3 34].any?('cow')
puts '------my_any--'
p %w[cow zero one two three four five six 3 34].my_any?('cow')
puts
puts 'Trying: %w[1 2 3 4 3 2 1].my_any?("cow")'
puts '------any-----'
p %w[1 2 3 4 3 2 1].any?('cow')
puts '------my_any--'
p %w[1 2 3 4 3 2 1].my_any?('cow')
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow"].my_any?("cow")'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow'].any?('cow')
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow'].my_any?('cow')
puts
puts '------WITH ARGUMENT NUMBER---'
puts 'Trying: %w[cow zero one two three four five six 3 34].my_any?(3)'
puts '------any-----'
p %w[cow zero one two three four five six 3 34].any?(3)
puts '------my_any--'
p %w[cow zero one two three four five six 3 34].my_any?(3)
puts
puts 'Trying: %w[1 2 3 4 3 2 1].my_any?(3)'
puts '------any-----'
p %w[1 2 3 4 3 2 1].any?(3)
puts '------my_any--'
p %w[1 2 3 4 3 2 1].my_any?(3)
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34].my_any?(34)'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34].any?(34)
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34].my_any?(34)
puts
puts '------WITH ARGUMENT OBJECT---'
puts 'Trying: %w[cow zero one two three four five six 3 34 [1, 2, 3] {a: 1} {a: 2}].my_any?([1, 2, 3])'
puts '------any-----'
p %w[cow zero one two three four five six 3 34 [1 2 3] {a: 1} {a: 2}].any?([1, 2, 3])
puts '------my_any--'
p %w[cow zero one two three four five six 3 34 [1 2 3] {a: 1} {a: 2}].my_any?([1, 2, 3])
puts
puts 'Trying: %w[1 2 3 4 3 2 1 [1,2,3] {a: 1} {a: 2}].my_any?({a: 2})'
puts '------any-----'
p %w[1 2 3 4 3 2 1 [1 2 3] { a: 1 } { a: 2 }].any?({ a: 2 })
puts '------my_any--'
p %w[1 2 3 4 3 2 1 [1 2 3] { a: 1 } { a: 2 }].my_any?({ a: 2 })
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34, [1,2,3], {a: 1}, {a: 2}].my_any?([1, 2, 3])'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].any?([1, 2, 3])
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].my_any?([1, 2, 3])
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34, [1, 2, 3], {a: 1}, { a: 2 }].my_any?({ a: 1 })'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].any?({ a: 1 })
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].my_any?({ a: 1 })
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34, { a: 1 }, { a: 2 }].my_any?({ a: 3} )'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].any?({ a: 3 })
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].my_any?({ a: 3 })
puts
puts '------WITH ARGUMENT CLASS---'
puts 'Trying: %w[cow zero one two three four five six 3 34].my_any?(String)'
puts '------any-----'
p %w[cow zero one two three four five six 3 34].any?(String)
puts '------my_any--'
p %w[cow zero one two three four five six 3 34].my_any?(String)
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34, [1, 2, 3], { a: 1 }, { a: 2 }].my_any?(Integer)'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].any?(Integer)
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].my_any?(Integer)
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34, [1, 2, 3], { a: 1 }, { a: 2 }].my_any?(Array)'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].any?(Array)
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, [1, 2, 3], { a: 1 }, { a: 2 }].my_any?(Array)
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34, { a: 1 }, { a: 2 }].my_any?(Array)'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, { a: 1 }, { a: 2 }].any?(Array)
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, { a: 1 }, { a: 2 }].my_any?(Array)
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34, { a: 1 }, { a: 2 }].my_any?(Hash)'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, { a: 1 }, { a: 2 }].any?(Hash)
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34, { a: 1 }, { a: 2 }].my_any?(Hash)
puts
puts 'Trying: [1, 2, 3, 4, 3, 2, 1, "cow", 34].my_any?(Hash)'
puts '------any-----'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34].any?(Hash)
puts '------my_any--'
p [1, 2, 3, 4, 3, 2, 1, 'cow', 34].my_any?(Hash)
puts
puts
