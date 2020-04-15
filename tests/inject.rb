require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
floats_array = [1.0, 2.0, 3.0, 4.0, 3.0, 2.0, 1.0]

puts '--USING A BLOCK WITH NO ARGUMENTS---------------------------------'
puts
puts 'Testing : ' + int_array.to_s + '.my_inject { |acc, i| acc + i }'
puts '--inject------------------------------------------------------------'
p(int_array.inject { |acc, i| acc + i })
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject { |acc, i| acc + i })
puts
puts 'Testing : ' + int_array.to_s + '.my_inject { |acc, i| acc - i }'
puts '--inject------------------------------------------------------------'
p(int_array.inject { |acc, i| acc - i })
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject { |acc, i| acc - i })
puts
puts 'Testing : ' + int_array.to_s + '.my_inject { |acc, i| acc * i }'
puts '--inject------------------------------------------------------------'
p(int_array.inject { |acc, i| acc * i })
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject { |acc, i| acc * i })
puts '-----------------------------------------------------------------'
puts
puts
puts '--USING A BLOCK WITH ACCUMULATIVE ARGUMENT-----------------------'
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(10) { |acc, i| acc + i }'
puts '--inject------------------------------------------------------------'
p(int_array.inject(10) { |acc, i| acc + i })
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject(10) { |acc, i| acc + i })
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(10) { |acc, i| acc - i }'
puts '--inject------------------------------------------------------------'
p(int_array.inject(10) { |acc, i| acc - i })
puts '--my_inject---------------------------------------------------------'
p int_array.my_inject(10) { |acc, i| acc - i }
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(10) { |acc, i| acc * i }'
puts '--inject------------------------------------------------------------'
p(int_array.inject(10) { |acc, i| acc * i })
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject(10) { |acc, i| acc * i })
puts '--------------------------------------------------------------------'
puts
puts
puts '--USING A SYMBOL ARGUMENT WITHOUT A BLOCK--------------------------------'
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(:+)'
puts '--inject------------------------------------------------------------'
p(int_array.inject(:+))
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject(:+))
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(:-)'
puts '--inject------------------------------------------------------------'
p(int_array.my_inject(:-))
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject(:-))
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(:*)'
puts '--inject------------------------------------------------------------'
p(int_array.inject(:*))
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject(:*))
puts
puts 'Testing : ' + floats_array.to_s + '.my_inject(:/)'
puts '--inject------------------------------------------------------------'
p(floats_array.inject(:/))
puts '--my_inject---------------------------------------------------------'
p(floats_array.my_inject(:/))
puts '------------------------------------------------------------------'
puts
puts
puts '--USING ACCUMULATIVE AND SYMBOL ARGUMENT WITHOUT A BLOCK-----------'
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(1000, :+)'
puts '--inject------------------------------------------------------------'
p(int_array.inject(1000, :+))
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject(1000, :+))
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(1000, :-)'
puts '--inject------------------------------------------------------------'
p(int_array.inject(1000, :-))
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject(1000, :-))
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(1000, :*)'
puts '--inject------------------------------------------------------------'
p(int_array.inject(1000, :*))
puts '--my_inject---------------------------------------------------------'
p(int_array.my_inject(1000, :*))
puts '------------------------------------------------------------------'
puts
puts 'Testing : ' + floats_array.to_s + '.my_inject(1000, :/)'
puts '--inject------------------------------------------------------------'
p(floats_array.inject(1000, :/))
puts '--my_inject---------------------------------------------------------'
p(floats_array.my_inject(1000, :/))
puts
puts
