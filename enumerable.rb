module Enumerable
  def my_each
    return self.to_enum unless block_given?
    items = self.is_a?(Range) ? self.to_a : self
    index = 0
    while index < items.length
      yield(items[index])
      index += 1
    end
    self
  end

  def my_each_with_index
    return self.to_enum unless block_given?
    items = self.is_a?(Range) ? self.to_a : self
    index = 0
    while index < items.length
      yield(items[index], index)
      index += 1
    end
    self
  end

  def my_select
    return self.to_enum unless block_given?
    array = []
    my_each{|item| array << item if yield(item) }
    array
  end

  def my_all?(*args)
    if !args[0].nil?
      my_each {|x| return false if (x  =~ args[0]).nil?}
      return true
    end
    unless block_given?
      my_each {|x| return false if (x.nil?) || (x == false)}
      return true
    end
    my_each do |x|
      return false unless yield(x)
    end
    true
  end

  def my_any?(*args)
    if !args[0].nil?
      my_each {|x| return true if x  =~ args[0]}
      return false
    end
    return true unless block_given?
    my_each do |x|
      return true if yield(x)
    end
    return false
  end

  def my_none?(*args)
    if !args[0].nil?
      my_each {|x| return false if x  =~ args[0]}
      return true
    end
    unless block_given?
      my_each {|x| return false unless (x.nil?) || (x == false)}
      return true
    end
    my_each do |x|
      return false if yield(x)
    end
    return true
  end

  def my_count(item=nil)
    count = 0
    if !item.nil?
      my_each{|x| count += 1 if x == item}
    else
      unless block_given?
        return self.length
      end
      my_each{|x| count += 1 if yield(x)}
    end
    count
  end

  def my_map
    return self unless block_given?
    map_array = []
    my_each_with_index{|x, i| map_array << yield(x, i)}
    return map_array
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def my_inject(*args)
    items = self.is_a?(Range) ? self.to_a : self
    accumulator = 0
    if args.count == 0
      accumulator = self[0]
      items.my_each_with_index { |item, i| accumulator = yield(accumulator, item) if i > 0}
    elsif args.count == 1
      if args[0].is_a?(Numeric)
        accumulator = args[0]
        items.my_each_with_index { |item, i| accumulator = yield(accumulator, item)}
      elsif args[0].is_a?(Symbol)
        operator = args[0]
        accumulator = self[0]
        items.my_each_with_index { |item, i| accumulator = accumulator.send(operator, item) if i > 0}
      end
    elsif args.count == 2
      accumulator = args[0]
      operator = args[1]
      items.my_each_with_index { |item, i| accumulator = accumulator.send(operator, item) }
    end
    accumulator
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def multiply_els

  end
end

