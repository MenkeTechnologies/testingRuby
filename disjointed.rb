["xkcd", 9, Object.new, ["a", "clean", "angry"], {:a => "hash"}].each do |e|
  puts e.class
end

myhash = Hash.new

`env`.split("\n").each do |i|
  prop, value = i.split('=')
  myhash[prop] = value
end

puts myhash["PATH"]

class Dish

end

class Soup < Dish

  def desc
    "a soup dish"
  end
end

class IceCream < Dish
end

class ChineseGreenBeans < Dish
end

class DeliveryTray

  attr_accessor :size

  @dish_bowl = {
      Soup => "soup bowl",
      IceCream => "ice cream bowl",
      ChineseGreenBeans => "serving plate"
  }

  @var = 1

  def self.var=(x)
    @var = x
  end

  def self.var
    @var
  end

  def self.dish_bowl
    @dish_bowl
  end

  def initialize
    @@var = 15
    @size = 2
    @dishes_needed = {}
  end

  def add(food)
    dish = @DISH_BOWL_MAPPING[food.class]
    @dishes_needed[dish] = (@dishes_needed[dish] || 0) + 1
  end

  def dishes_needed
    return "None." if @dishes_needed.empty?

    @dishes_needed.map {|dish_name, count| "#{count} #{dish_name}"}.join(", ")
  end
end

class Object
  def superclasses(klass = self.superclass)
    return [] if klass.nil?
    [klass] + superclasses[klass.superclass]
  end
end

def multi_line(*lines)
  "here are your #{lines.join("\n")}"
end

def big_q_string(numerator, denominator)
  %Q[This %Q syntax is the ugliest one.
#{numerator} out of #{denominator} "dentists" agree.]
end

def array_words
  %w[width this cool]
end

class WaiterRobot
  def initialize(chef, tables)
    @chef = chef
    @tables =tables
    @name = "tyler durden"
  end

  def name
    @name
  end

  def place_order(table_number, sandwich, drink)
    order = {:table => table_number, :sandwich => sandwich, :drink => drink}
    @chef.new_order(self, order)
  end

  def serve(order)
    o = Hash[*order]
    table_number = o[:table]
    table = @tables[table_number]

    table.serve_sandwich(o[:sandwich])
    table.serve_drink([:drink])
  end

end

CHARACTERS = ["Joey Jeremiah", "Snake Simpson", "Wheels", "Spike Nelson", "Arthur Kobalewscuy", "Caitlin Ryan", "Shane McKay", "Rick Munro", "Stephanie Kaye"]

def degreaas

  all = CHARACTERS.product(CHARACTERS)

  p all

  all.reject {|c| c.first == c.last}

end

module Foo
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end
end

class Bar
  include Foo
end

module Foo
  def self.extended(base)
    puts "Class #{base} extended iwht #{self}"
  end
end

class Bar
  extend Foo
end
