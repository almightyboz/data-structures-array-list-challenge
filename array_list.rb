require_relative 'fixed_array'

class ArrayList

  attr_reader :capacity, :size

  def initialize(capacity)
    @capacity = capacity
    @size = 0
    @list = FixedArray.new(@capacity)
  end

  def check_index!(index)
    raise IndexError if index > @capacity
  end

# if true, add a thing
  def has_vacancy?
    @capacity > @size
  end

  def add(element)
    if has_vacancy?
      @list.set(@size, element)
    else
      @capacity += 1
      new_fixed_array = FixedArray.new(@capacity)
      new_fixed_array.set(@size, element)
      @list = new_fixed_array
    end
    @size += 1
    return element
  end

  def get(index)
    check_index!(index)
    if @list.get(index)
      return @list.get(index)
    else
      raise IndexError
    end
  end

  # can you change an element to nil?
  def set(index, element)
    # check_index!(index)
    if @list.get(index)
      @list.set(index, element)
      return element
    else
      raise IndexError
    end
  end

  # O is n
  def length
    to_check = 0
    if to_check > @capacity
      if @list.get(to_check)
        @size += 1
      end
      to_check += 1
    end
    return @size
  end

# do I need to add a case if the index is not contained within the size array? (e.g., if it fails check_index!)
# if so, I just need to use set
# do I need to return anything?
  def insert(index, element)
    check_index!(index)
    raise IndexError unless @list[index]
    @list[index] = element
    # @list[index]
  end
end

# puts "===================="