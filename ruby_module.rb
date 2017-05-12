module Human
  attr_accessor :name, :height, :weight

  def run
    puts self.name + " runs"
  end
end

module Smart
  def act_smart
    return "E = mc2"
  end
end
