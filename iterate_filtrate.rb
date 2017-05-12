class Iterate_filtrate

end

#
#  x = {:locke =>4, :hugo =>8}.any? { |candidate, number| number < 4}
#
# puts x
#
#
# class Island
#   def initialize(candidates)
#     @candidates = candidates
#   end
#
#   def survive?
#     @candidates.none? {|c| c == "Esau"}
#   end
#
#   def safe?
#     @candidates.all? {|c| c== "Jack"}
#   end
# end
#
#
#
# # i = Island.new(["tom", "jerry", "Esau"])
# #
# # p i.survive?
# #
# # p i.safe?
# #
# #
#
# union_example = ["a","b","a"] & ["a", "c", "c"]
#
# p union_example
#
# class FibonacciNumbers
#   NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
#
#   def each
#     for i in NUMBERS
#       yield i
#     end
#   end
#
#   include Enumerable
# end
#
#
# f = FibonacciNumbers.new
# if f.respond_to?(:map)
#   squares = f.map {|number| number * number }
#   puts "The squares of the fibonacci numbers are #{squares}"
# else
#   puts "I'll reveal the squares to you once you pass the tests."
# end
#
# require 'logger'
#
# logger = Logger.new($stderr)
# logger.level = Logger::WARN
# logger.formatter = lambda do |sev, dt, prog, msg|
#   "#{dt}: #{msg}\n"
# end
#
# logger.warn"this is warning"
#
# logger.info "this is info"
#
# a = "tom"
# b = "jerry"
# superheroes = [a,b]
#
# b = b.sub!("jerry", "batman")
#
#
# puts "20".to_f
#
# require 'benchmark'
# n= 4000
# Benchmark.bm do |benchmark|
#   benchmark.report do
#     a=[]; n.times {a = a + [n]}
#   end
#   benchmark.report do
#     a = []; n.times {a << n}
#   end
#   benchmark.report do
#     a=[1..n].map {|number| number}
#   end
# end

class Object
  def metaclass
    class << self
      self
    end
  end
end

bar = "bar"

bars = [bar]

p bars

a = [1,2,34]

a.freeze
a = "dogs"
p a

myhash = {:name=>"jacob", :age=>25}

myhash.each do |k,v|
  puts "the key is #{k} and the value is #{v}"
end

# File.open("/etc/passwd") do |file|
#   file.each do |line|
#     name, pw, id = line.chomp().split(":")
#
#     puts "name is #{name}, pw is #{pw} and id is #{id}"
#   end
# end
