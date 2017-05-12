class UserDataAccess
  attr_accessor :db

  def initialize
    @db = Database.new
  end

  def find_user(name)
    @db.find("Select * from users where name = '%'", name)
  rescue Exception => e
    puts " A dataabse error"
  ensure
    @db.close
  end

end

def zen
  10.times do
    answer = 42/0
  end
end

begin
  puts "Calling zne"
  zen
rescue ZeroDivisionError => error
ensure
  puts "finally " + self.class.to_s
end

class InfinityError < StandardError

end

ie = InfinityError.new("infinity error")

begin
  if 1.0 / 0.0
    raise ie
  end
rescue InfinityError => e
  p e.message
end

def robe(type)
  if type.downcase != "kasaya"
    raise KasayaError
  else
    ""
  end

end

floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

attempts = 0
candy = catch(:found) do

end
#
# def search(floor)
#   attempts = 0
#   floor.each do |row|
#     row.each do |tile|
#       attempts +=1
#       if tile == "gummy" or tile == "jawbreaker"
#         return tile
#       end
#     end
#   end
# end
#
#
# class Shoe
#   def initialize(toes = 1)
#     @toes = toes
#   end
#
#   puts "inside the class: #{defined?(@toes).inspect}"
#
#   def i_can_haz_toes
#     puts "inside the instance: #{defined?(@toes).inspect}"
#   end
# end
#
# class Foot
#   def initialize(toes = 5)
#     @toes = toes
#   end
#
#   puts "inside the class: #{defined?(@toes).inspect}"
#
#   def i_can_haz_toes
#     puts "inside the instance: #{defined?(@toes).inspect}"
#   end
# end
#
# Dog = Class.new do
#   @id = "cool"
#
#   def kiss
#     "sucking"
#   end
#
#   def self.id
#     @id
#   end
# end
#
#
# h= {:locke => 4, :hugo => 8}
#
# def map_value
#   [3, 7, 15, 22, 41].map {|e| e+ 1}
# end
#
#
# def hash_keys(hash)
#   hash.map {|e| e[0]}.flatten
# end
#
#
# p [4, 8, 15].inject(10) {|acc, iter| acc += iter; acc}
#
# def custom_inject(array, default = nil)
#   accumulator = default || array[0]
#
#   array.each do |elem|
#     accumulator += elem
#   end
#
#   accumulator
#
# end

#
#
# p custom_inject([4,8,15,16,23,42], 0)

#

str = " I am cool the dogs are in the house cool suckaz I I dicky"

def occurences(str)
 str.scan(/\w+/).inject(Hash.new(0)) do |build, word|
   build[word.downcase] += 1
   build
 end
end

puts {:locke => 4, :hugo => 8}.any? { |candidate| candidate[1] > 4 }
