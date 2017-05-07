class MyArray < Array

end



class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
end

class Square < Rectangle

  @@num_squares = 0
  def initialize(side)
    @length = side
    @breadth = side
    @@num_squares += 1
  end

  def getArea
    @length ** 2
  end

  def self.num_squares
    @@num_squares
  end

  def self.num_squares=(obj)
    @@num_squares = obj
  end
end

module Jacob
  class My < Array
    def map
      'in soviet russia...'
    end
  end
end


s = Square.new(5)

ss = Square.new(5)


class AppConfig
  @config = {}

  def self.set(prop,value)
    @config[prop] = value
  end

  def self.get(prop)
    @config[prop]
  end
end

class ERPAppConfig < AppConfig
@config = {}
end


class Item
  attr_reader :item_name, :qty
  attr_writer :item_name, :qty

  def initialize(item_name = nil, qty = nil)
    @item_name = item_name
    @qty = qty
  end


  def hash
    self.item_name.hash ^ self.qty.hash
  end
  def eql?(other_item)
    puts "#eql? invoked"
    self.==(other_item)
  end


  def ==(other)
    if self.item_name == other.item_name && self.qty == other.qty
      true
    end
  end

  def to_s
    "dogs"
  end

end

