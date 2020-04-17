require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
range = (1..5)
str_array = %w[zero one two three four five six]
puts 'TESTING my_select'
puts
puts
puts '------select-----'
p(int_array.select { |x| x < 3 })
puts '------my_select--'
p(int_array.my_select { |x| x < 3 })
puts
puts '------select-----'
p(range.select { |x| x < 3 })
puts '------my_select--'
p(range.my_select { |x| x < 3 })
puts
puts '------select-----'
p(str_array.select { |x| x < 't' })
puts '------my_select--'
p(str_array.my_select { |x| x < 't' })
puts
puts '------NO BLOCK---'
p int_array.my_select
p range.my_select
p str_array.my_select
puts
puts
