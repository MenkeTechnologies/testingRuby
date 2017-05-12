
# class Array
#   def foldl(method)
#     inject {|result, i| result ? result.send(method, i) : i}
#   end
# end
#
# puts [5000.0,10.0,1.0].foldl("/");
#
#
# puts [1,235,3].inject (0){|sum, i| sum += i}
#
# class String
#   def words
#     self.split" "
#   end
# end

class Glider
  def printers(one, *ary)
    for i in ary
      puts i
    end
  end
end

class Doctor
  ["rhinoplasty", "checkup"].each do |action|
    define_method("perform_#{action}") do |argument|
      "performing #{action.gsub('_', ' ')} on #{argument}"
    end

  end
end

puts Doctor.new.perform_checkup("throat")

class Monk
  ["meditate_on_life", "meditate_on_the_universe", "meditate_on_everything"].each do |action|
    define_method(action) do

      arr = action.gsub('_', ' ').split[2..-1]
      str = arr.join(" ")
      "I know the meaning of #{str}"
    end
  end
end
