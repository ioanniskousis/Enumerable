module Enumerable
  def my_each
    return enum_for unless block_given?

    items = is_a?(Range) ? to_a : self
    index = 0
    while index < items.length
      yield(items[index])
      index += 1
    end
  end

  def my_each_with_index
    return enum_for unless block_given?

    items = is_a?(Range) ? to_a : self
    index = 0
    while index < items.length
      yield(items[index], index)
      index += 1
    end
  end

  def my_select
    return enum_for unless block_given?

    array = []
    my_each { |item| array << item if yield(item) }
    array
  end

  def my_all?(*args)
    unless args[0].nil?
      if args[0].is_a?(Class)
        my_each { |x| return false if !x.is_a?(args[0]) }
      elsif args[0].class.name == 'Regexp'
        my_each { |x| return false if (x =~ args[0]).nil? }
      elsif args[0].is_a?(Object)
        my_each { |x| return false unless x == args[0] }
      end
      return true
    end
    unless block_given?
      my_each { |x| return false if x.nil? || x == false }
      return true
    end
    my_each { |x| return false unless yield(x) }
    true
  end

  def my_any?(*args)
    unless args[0].nil?
      my_each { |x| return true if args[0].is_a?(Class) && x.is_a?(args[0]) }
      return include?(args[0]) if args[0].is_a?(Object)

      my_each { |x| return true if x =~ args[0] }
      return false
    end
    unless block_given?
      my_each { |x| return true if !x.nil? && (x != false) }
      return false
    end
    my_each { |x| return true if yield(x) }
    false
  end

  def my_none?(*args)
    unless args[0].nil?
      my_each { |x| return false if x =~ args[0] }
      return true
    end
    unless block_given?
      my_each { |x| return false unless x.nil? || (x == false) }
      return true
    end
    my_each do |x|
      return false if yield(x)
    end
    true
  end

  def my_count(item = nil)
    count = 0
    if !item.nil?
      my_each { |x| count += 1 if x == item }
    else
      return length unless block_given?

      my_each { |x| count += 1 if yield(x) }
    end
    count
  end

  def my_map(proc = nil)
    map_array = []
    if proc.nil?
      return to_enum unless block_given?

      my_each { |x| map_array << yield(x) }
    else
      my_each { |x| map_array << proc.call(x) }
    end
    map_array
  end

  def my_inject(*args)
    items = is_a?(Range) ? to_a : self
    accumulator = 0
    if args.count.zero?
      accumulator = self[0]
      items.my_each_with_index do |item, i|
        accumulator = yield(accumulator, item) if i.positive?
      end
    elsif args.count == 1
      if args[0].is_a?(Numeric)
        accumulator = args[0]
        items.my_each do |item|
          accumulator = yield(accumulator, item)
        end
      elsif args[0].is_a?(Symbol) || args[0].is_a?(String)
        operator = args[0].is_a?(String) ? args[0].to_sym : args[0]
        accumulator = self[0]
        items.my_each_with_index do |item, i|
          accumulator = accumulator.send(operator, item) if i.positive?
        end
      end
    elsif args.count == 2
      accumulator = args[0]
      operator = args[1]
      items.my_each do |item|
        accumulator = accumulator.send(operator, item)
      end
    end
    accumulator
  end
end
