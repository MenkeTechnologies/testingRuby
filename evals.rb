def zen
  puts "dogs"
end

def get_binding
  binding
end

class Monk
  def get_binding
    binding
  end
end

puts eval("self", get_binding)


puts "on second branch"