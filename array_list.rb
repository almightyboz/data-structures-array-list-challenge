require_relative 'fixed_array'

class ArrayList

  attr_reader :capacity, :size

  def initialize(capacity=8)
    @capacity = capacity
    @size = 0
    @list = FixedArray.new(@capacity)
  end

  def populate_array(counter=0)
    new_array = FixedArray.new(@capacity)
    until counter > @size
      temporary_item = @list.get(counter)
      new_array.set(counter, temporary_item)
      counter += 1
    end
    @capacity += 1
    @list = new_array
  end

  def add(element)
    if @capacity > @size
      @list.set(@size, element)
    else
      populate_array()
    end
    @list.set(@size, element)
    @size += 1
    return element
  end

  def get(index)
    if @list.get(index)
      return @list.get(index)
    else
      raise IndexError
    end
  end

  def set(index, element)
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

  def insert(index, element)
    if @list.get(index)

    else
      raise IndexError
    end
  end

end

# list = ArrayList.new(5)
# list.add("alfa")
# list.add("bravo")
# list.add("charlie")
# list.add("delta")
# new_list = list.populate_array(7)
# puts new_list.get(0)
# puts new_list.get(6)

# puts "===================="
# IF there is a element at index x
#   create a counter variable equal to x
#   if counter variable is less than capacity
# => get the element at index x and save it as a variable
  # set it as the element at index x + 1
  #