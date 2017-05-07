class Banas
end

# print "Enter a value\n"
# first_num = gets.to_i
#
# print "Enter another value\n"
#
# second_num = gets.to_i
#
# print first_num.to_s + " + " + second_num.to_s +  " = " + (first_num + second_num).to_s
#
# p 1.class
#
# p 1.234.class
#
# p "A String".class
#
# A_CONSTANT = 31.5
# # Constant
# A_CONSTANT = 5
# p A_CONSTANT.class
#
# write_handler = File.new("yourSum.out","w")
#
# write_handler.puts("Random Text").to_s()
#
# write_handler.close
#
# data = File.read("yourSum.out")
#
# print "Data from File: " + data
#
# load "test"

=begin
Multiline
conditional
=end
#
# age = 7

# if age <= 5
#   print "You are in kindergarten\n"
# elsif age >= 7
#   print "youare in middle school\n"
# end
# puts "true && false = " + (true && false).to_s
#
# puts "5 <=> 10 = " + (11 <=> 10).to_s

# age = 12
#
# unless age > 4
#   puts "No School"
# else
#   p "Go to school"
# end
#
# puts "you are young " if age < 30
#
# greeting = gets.chomp
#
# case greeting
#   when "French", "french"
#     puts "Hola"
#   when "Spanish", "spanish"
#     puts "Segundo"
#   else
#     puts "hello"
# end
#
# age =12

# ternarny
# puts (age >= 50) ? "Old" : "Young"

# x=1
#
# loop do
#   x += 1
#   p x
#   next unless (x %2) == 0
#
#   break if x>= 10
#
#
# end

# y = 1
#
# while y <= 10
#   y +=1
#   next unless (y %2 ==0)
#   p y
# end
#
# a = 1
#
# until a >= 10
#   a +=1
#   p a
# end

# numbers = [1,2,3,4,5]
#
# for number in numbers
#   print "the number is #{number} "
# end
#
# groceries = ["bananas","sweet potatoes", "pasta"]
#
# groceries.each do |f|
#   puts "Get some #{f}"
# end
#
# (0..5).each do |i|
#   puts "# #{i}"
# end

# def add_nums(num1, num2)
#   return num1.to_i + num2.to_i
# end
#
# x = add_nums 3,4
#
# p x

# puts "Enter a number"
#
# x = gets.to_i
#
# puts "Enter a second number"
#
# y = gets.to_i
#
# begin
#   answer = x / y
# rescue
#   puts "You can't divide by zero"
#   exit
# end
#
# puts "#{answer} was "

age = 12
#
# def check_age(age)
#   raise ArgumentError, "Enter Positive Number" unless age >0
# end
#
# begin
#   check_age(-1)
# rescue ArgumentError
#   puts "Impossible age"
# end
#
# puts "Add Them #{4 + 5}"

# multiline = <<EOM
#
# This is ver long string
# with interpolation
#
# EOM
#
# print multiline

firstName = "Derek"

lastName = "banas"

fullName = firstName + " " +  lastName

# puts fullName.include?("Derek")
#
# puts fullName.size
#
# puts "Vowels : " + fullName.count("aeiou").to_s
# puts "Consonants : " + fullName.count("^aeiou").to_s
#
# puts "Index : " + fullName.index("banas").to_s
#
# puts fullName.start_with?("Banas")
#
# puts "a == a " + ("a" =="a").to_s
#
# puts "\"a\".equal?(\"a\") : " + ("a".equal?"a").to_s
#
# puts fullName.upcase
#
# puts fullName.swapcase
#
# fullName = fullName.lstrip
#
# puts fullName.rjust(15, '.')
#
# puts fullName.chop
# #
# puts fullName.chomp('as')
#
# puts fullName.delete("a")

# names_array = fullName.split(//)
#
# puts names_array
#
# puts "the dogs \a"


# class Animal
#   def initialize
#     puts "Creating a new animal"
#   end
#
#   def set_name(new_name)
#     @name = new_name
#   end
#
#   def get_name
#     @name
#   end
#
#   def name=(new_name)
#     if new_name.is_a?(Numeric)
#       puts "Name cant be a Nubmer"
#     else
#       @name = new_name
#     end
#   end
#
# end
#
# cat = Animal.new
#
# cat.set_name "peekaboo"
# cat.name ="pumpkin"
#
# puts "My Name is #{cat.get_name}"
#
# class Dog
#   attr_accessor :name, :height, :weight
#
#   def bark
#     return "Generic bark"
#   end
#
# end
#
# rover = Dog.new
#
# rover.name = "Rover"
#
# puts "the name is #{rover.name}"
#
# class GermanShepherd < Dog
#   def bark
#     return "Loud Bark"
#   end
# end

#
# max = GermanShepherd.new
#
# max.name ="Max"
#
# printf "%s goes %s! \n", max.name, max.bark()

require_relative "ruby_module"

module Animal
  def make_sound
    puts "Grrr"
  end
end

class Dog
  include Animal
end

rover = Dog.new
rover.make_sound

class Scientist
  include Human
  prepend Smart

  def act_smart
    return "E = mc2 dogs"
  end

end

einstein = Scientist.new
einstein.name = "einstein"

einstein.act_smart

einstein.run

puts einstein.name + " says " + einstein.act_smart

# x = <<EOM
# cool but
# not criticize
# EOM
#
# puts "the value is #{x}"


# polymorphism
# class Bird
#   def tweet(bird_type)
#     bird_type.tweet
#   end
# end
#
# class Cardinal < Bird
#   def tweet
#     puts "Tweet tweet"
#   end
# end
#
# class Parrot < Bird
#   def tweet
#     puts "Squawk"
#   end
# end
#
# generic_bird = Bird.new
# generic_bird.tweet(Cardinal.new)
# generic_bird.tweet(Parrot.new)
#
# # symbols
# :derek
#
# puts :derek.to_s
# puts :derek.class
# puts :derek.object_id
#
# array_1 = Array.new
# array_2 = Array.new(5, "empty")
# array_3 = [1, "two", 2, 3, 4]
#
# puts array_3[1]
#
# for i in 0..35
#   print "*"
#   if i == 35
#     puts
#   end
# end
#
# puts array_3[0,2].join(", ")
# puts array_3.values_at(0,1,3).join("_____")
#
# array_3.unshift(0)
# array_3.push(100)
# array_3.pop
# array_3.concat([10,20,30])
# puts array_3
#
# puts "the array has 100 =  #{array_3.include?(10).to_s}"
# puts "the array size is #{array_3.size}"
# puts "the array is empty: #{array_3.empty?.to_s}"
#
# p array_3
#
# array_3.each do |v|
#   puts "the value is #{v}"
# end

number_hash = {"PI" => 3.14}

puts number_hash["PI"]

superheroes = Hash["Jacob", "Menke", "Barry", "Allen"]


superheroes.each do |key, value|
  puts "the key is #{key} and the value is #{value}"
end

class Menu
  include Enumerable

  def each
    yield "pizza"
    yield "spaghetti"
    yield "salad"
    yield "water"
    yield "bread"
  end

end


menu_options = Menu.new

menu_options.each do |item|
  puts "the item is #{item}"
end

puts menu_options.find{|item| item="pizza"}

p menu_options.select{|item| item.size <= 5}

p menu_options.min

puts menu_options.sort

for i in 0..20 do
  print "*"
end
puts

menu_options.reverse_each{|item| puts item}

file = File.new("authors.out", "w")

file.puts "Willaim"

file.puts "dogs"

file.close

puts File.read("authors.out")

File.open("authors.out") do |record|
  record.each do |item|
    puts "the item is #{item}"
  end
end

