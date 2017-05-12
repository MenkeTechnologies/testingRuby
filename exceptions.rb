
def extract_fist_name(name)
  first = name.split(" ").first
  puts "Extracted first name #{first}"
  first
end

def casual_names(names)
  casual = names.map {|name| extract_fist_name(name)}.map {|name| name.upcase}
  puts "captured casual names #{casual}"
  casual
end

puts casual_names(["Yehuda Katz", "Why the lucky stiff"])

def start_summer
  raise Exception.new("overheated")
end

begin
  start_summer
rescue Exception => e
  puts "its cold in here boy #{e.inspect}"
end

EXAMPLE_SECRETS = ["het", "keca", "si", "iel"]

def announce(s)
  puts "its #{s}"
end

def decode(jumble)
  secret = jumble.split("").rotate(3).join("")
  announce(secret)
  secret
end

def decode_all(ary)
  ary.each { |s| decode(s) } rescue "its okay little buyy"
end

decode_all(EXAMPLE_SECRETS)

def string_slice(*args)
  myarray = []
  if args.count > 5
    raise ArgumentError, "no more than 5 buddy"
  else
    for word in args
      if word.length < 3
        raise IndexError, "< 3"
      else
        myarray.push(word[0..2])
      end
    end

  end

  myarray
end

p string_slice("dogs", "cats","sex","bomb","titties huhe")
