module Enumerable
  def my_each
    return to_enum unless block_given?

    items = is_a?(Range) ? to_a : self
    index = 0
    while index < items.length
      yield(items[index])
      index += 1
    end
    self
  end

  def my_each_with_index
    return to_enum unless block_given?

    items = is_a?(Range) ? to_a : self
    index = 0
    while index < items.length
      yield(items[index], index)
      index += 1
    end
    self
  end

  def my_select
    return to_enum unless block_given?

    array = []
    my_each{|item| array << item if yield(item) }
    array
  end

  def my_all?(*args)
    unless args[0].nil?
      my_each { |x| return false if (x =~ args[0]).nil? }
      return true
    end
    unless block_given?
      my_each { |x| return false if (x.nil?) || x == false }
      return true
    end
    my_each { d |x| return false unless yield(x) }
    true
  end

  def my_any?(*args)
    if !args[0].nil?
      my_each { |x| return true if x =~ args[0] }
      return false
    end
    return true unless block_given?

    my_each do |x|
      return true if yield(x)
    end
    false
  end

  def my_none?(*args)
    unless args[0].nil?
      my_each { |x| return false if x =~ args[0] }
      return true
    end
    unless block_given?
      my_each { |x| return false unless (x.nil?) || (x == false) }
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

  def my_map
    return self unless block_given?

    map_array = []
    my_each_with_index { |x, i| map_array << yield(x, i) }
    return map_array
  end

  def my_inject(*args)
    items = is_a?(Range) ? to_a : self
    acc = 0
    if args.count.zero?
      acc = self[0]
      items.my_each_with_index do |item, i|
        acc = yield(acc, item) if i.positive?
      end
    elsif args.count == 1
      if args[0].is_a?(Numeric)
        acc = args[0]
        items.my_each do |item|
          acc = yield(acc, item)
        end
      elsif args[0].is_a?(Symbol)
        operator = args[0]
        acc = self[0]
        items.my_each_with_index do |item, i|
          acc = acc.send(operator, item) if i.positive?
        end
      end
    elsif args.count == 2
      acc = args[0]
      operator = args[1]
      items.my_each do |item|
        acc = acc.send(operator, item)
      end
    end
    acc
  end

  def multiply_els
    p self
  end
end
