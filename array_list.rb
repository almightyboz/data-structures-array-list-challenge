class ArrayList

  attr_reader :size

  def initialize(size)
    @size = size
    @list = Array.new(@size)
  end

  def check_index!(index)
    raise IndexError if index > @size
  end

  def add(element)
    @size += 1
    set(@size, element)
  end

  def get(index)
    check_index!(index)
    @list[index]
  end

  def set(index, element)
    check_index!(index)
    @list[index] = element
    @list[index]
  end

  def length
    @size
  end

end

# puts "===================="