module Enumerable
  def my_each
    return "block is required" unless block_given?
    items = self.is_a?(Range) ? self.to_a : self
    count = 0
    while count < items.length
      yield(items[count])
      count += 1
    end
    items
  end

  def my_each_with_index

  end

  def my_select

  end

  def my_all?

  end

  def my_any?

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