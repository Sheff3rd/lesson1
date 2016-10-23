class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.take_while.each(&:odd?)
  end

  def multiple_to_three
    @array2 = []
    @array.keep_if { |i| (i % 3).zero? }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |i| i / 10.0 }
  end

  def chars
    @alph = [nil, :a, :b, :c, :d, :e, :f]
    @array.map { |index| @alph[index] }
  end

  def switch
    min, max = @array.minmax
    mini = @array.index(min)
    maxi = @array.index(max)
    @array[mini] = 3
    @array[maxi] = min
    @array
  end

  def before_min
    @array.take_while.each_with_index { |i| i < @array.index(@array.min) }
  end

  def three_smallest
    @array.sort.shift(3)
  end
end
