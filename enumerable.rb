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

  def my_count

  end

  def my_map

  end

  def my_inject

  end

  def multiply_els

  end

end