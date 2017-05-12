require'YAML'

# class Ogre
#   def initialize(strength, speed)
#     @strength = strength
#     @speed = speed
#   end
#
#   # this is reminiscent of our old friend, CerealBox#from_s
#   def self.deserialize(yaml_string)
#     YAML::load(yaml_string)
#   end
#
#   # and this is a much-simplified version of our CerealBox#to_s
#   def serialize
#     YAML::dump(self)
#   end
#
#   # now we're free to define #to_s however we like!
#   # ...which is great, because #to_s is for programmers to read,
#   # not computers or users
#   def to_s
#     "Ogre: [strength = #{@strength}, speed = #{@speed}]"
#   end
# end
#
# zen, john = [[4,8], [3,16], [23,42,15]]
#
# #
# # [[1,2,3,4], [42,43]].each {|a,b| puts "#{a} #{b}"}
#
# def computer(ary)
#   return nil unless ary
#   ary.map{ |a,b| !b.nil? ? a+b : a}
# end
#
# p computer([[4,8], [15,16]])
#
# def median(*list)
#
#   return nil if list.empty?
#
#   # list.sort
#
#   if list.count % 2 == 0
#     55
#   else
#     33
#   end
# end
#
#
#
# p median(55,33,112,44)
#
# zen = *(1..100)
#
# str =  *"ZEN is cool"
#
#
# ary = [[4,8],[15,15]]

#
# puts Hash[*ary.flatten]
#
# puts [42,8,15,16,23,42].index{ |e| e % 2 != 0}
#
# def zen(array)
#   converted = array.compact.flatten
#   converted.index(42) == 5 ? converted.count : nil
#
# end
#
# p [4,8,15,16,23,42].join("_").upcase
#
# def few2Last(array)
#   last = array.slice(-2..-1)
#   last.join("|")
# end
#
#
# p [2,3,43].unshift(235,23,235/23523,'suck dog',23.23, 0x1350)
#
#
# p few2Last([2,3,5,3])
#
# p [17, 8978].pack("UU")
#

class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end

  def pop
    if size > 0
      popped = @store[@top]
      @store[@top] = nil

      popped
    else
      nil
    end
  end

  def push(elem)
    if @store.size + 1 > size
      nil
    else
      @top = @top.succ
      @store[@top] = elem
      self
    end
  end

  def empty?
    @store.size == 0
  end

  def look
    @store[@top]
  end

  private

  def full?
    @store.size == @size
  end

  def size
    @store.size
  end

end

def Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end

  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ
      dequed = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequed
    end

  end

  def enqueue(elem)
    if full? or elem.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = elem
      self
    end
  end

  def size
    @size
  end

  private
  def empty?
    @head == -1 and @tail = 0
  end

  def full?
    @tail.abs = (@size)
  end
end
