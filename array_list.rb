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