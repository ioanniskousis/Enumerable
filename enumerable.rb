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

  def my_all?
    return true unless block_given?
    my_each do |x|
      return false unless yield(x)
    end
    true
  end

  def my_any?
    return true unless block_given?
    my_each do |x|
      return true if yield(x)
    end
    return false
  end

  def my_none?

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