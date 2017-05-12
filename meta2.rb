
class Monastery
  def monks(arg1, arg2)
    "Monks" + arg1 + arg2
  end
end

mo = Monastery.new.method(:monks)

p Monastery.public_methods(false)

class This
  def suck
    "sucking"
  end

end

class That

end

class Monk
  def initialize
    @zen = 42
  end
end
