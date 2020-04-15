require_relative 'include_enumerable'
map_proc = proc do |x|
  (x % 2).zero? ? x + 100 : x + 200
end

a = [1, 2, 3, 4, 5]
puts
puts '------USING A BLOCK---'
puts 'Testing: ' + a.to_s + '.my_map{ |x| (x % 2) == 0 ? x + 10 : x + 20 }'
puts '--map---------------------------------------------------------------'
p(a.map { |x| (x % 2).zero? ? x + 10 : x + 20 })
puts '--my_map------------------------------------------------------------'
p(a.my_map { |x| (x % 2).zero? ? x + 10 : x + 20 })
puts
puts '------NO BLOCK---'
puts 'Testing: ' + a.to_s + '.my_map'
puts '--map---------------------------------------------------------------'
p a.map
puts '--my_map------------------------------------------------------------'
p a.my_map
puts
puts '------USING A PROC---'
puts 'Testing: ' + a.to_s + '.my_map(&map_proc)'
puts '--map---------------------------------------------------------------'
p a.map(&map_proc)
puts '--my_map------------------------------------------------------------'
p a.my_map(&map_proc)
puts
puts
