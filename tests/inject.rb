require_relative 'include_enumerable'

int_array = [1, 2, 3, 4, 3, 2, 1]
floats_array = [1.0, 2.0, 3.0, 4.0, 3.0, 2.0, 1.0]

puts "--Using a block with no arguments---------------------------------"
puts 'Testing : ' + int_array.to_s + '.my_inject() { |acc, i| acc + i }'
puts "--each------------------------------------------------------------"
p int_array.inject() { |acc, i| acc + i }
puts "--my_each---------------------------------------------------------"
p int_array.my_inject() { |acc, i| acc + i }
puts
puts 'Testing : ' + int_array.to_s + '.my_inject() { |acc, i| acc - i }'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject() { |acc, i| acc - i }
puts
puts 'Testing : ' + int_array.to_s + '.my_inject() { |acc, i| acc * i }'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject() { |acc, i| acc * i }
puts "-----------------------------------------------------------------"
puts "--Using a block with accumulative argument-----------------------"
puts 'Testing : ' + int_array.to_s + '.my_inject(10) { |acc, i| acc + i }'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject(10) { |acc, i| acc + i }
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(10) { |acc, i| acc - i }'
p int_array.my_inject(10) { |acc, i| acc - i }
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(10) { |acc, i| acc * i }'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject(10) { |acc, i| acc * i }
puts "------------------------------------------------------------------"
puts "--Using a block with Symbol argument-----------------------"
puts 'Testing : ' + int_array.to_s + '.my_inject(:+)'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject(:+)
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(:-)'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject(:-)
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(:*)'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject(:*)
puts
puts 'Testing : ' + floats_array.to_s + '.my_inject(:/)'
p floats_array.my_inject(:/)
puts "------------------------------------------------------------------"
puts "--Using NO block with accumulative AND Symbol arguments-----------"
puts 'Testing : ' + int_array.to_s + '.my_inject(10, :+)'
p int_array.my_inject(10, :+)
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(10, :-)'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject(10, :-)
puts
puts 'Testing : ' + int_array.to_s + '.my_inject(10, :*)'
puts "--each------------------------------------------------------------"
puts "--my_each---------------------------------------------------------"
p int_array.my_inject(10, :*)
puts "------------------------------------------------------------------"

puts
puts

#   # rubocop:disable Metrics/CyclomaticComplexity
#   def my_inject(*args)
#     list = is_a?(Range) ? to_a : self

#     reduce = args[0] if args[0].is_a?(Integer)
#     operator = args[0].is_a?(Symbol) ? args[0] : args[1]

#     if operator
#       list.my_each { |item| reduce = reduce ? reduce.send(operator, item) : item }
#       return reduce
#     end
#     list.my_each { |item| reduce = reduce ? yield(reduce, item) : item }
#     reduce
#   end
#   # rubocop:enable Metrics/CyclomaticComplexity
# end

# # Test my_inject
# def multiply_els(list)
#   list.my_inject(:*)
# end