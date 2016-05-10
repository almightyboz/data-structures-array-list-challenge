class ArrayList
  def initialize(size)
    @arraySize = size
    @array = FixedArray.new(size)
  end

  def add(element)

  end

  def get(index)
    @array.get(index)
  end

  def set(index, element)
    @array.set(index, element)
  end

  def length
    @arraySize
  end
end

class FixedArray

  def initialize(size)
    @arraySize = size
    @array = Array.new(size)
  end

  def get(index)
    # begin
      raise 'OutOFBoundsException' if index > @arraySize - 1 || index < 0
    # rescue
    #   puts 'what it do'
    # end
    @array[index]
  end

  def set(index, element)
    raise 'OutOFBoundsException' if index > @arraySize - 1 || index < 0
    @array[index] = element
  end

  def size
    return @arraySize
  end

end
