["xkcd", 9, Object.new, ["a", "clean", "angry"], {:a => "hash"}].each do |e|
  puts e.class
end

myhash = Hash.new

`env`.split("\n").each do |i|
  prop, value = i.split('=')
  myhash[prop] = value
end

for k, v in myhash
  puts "the key is #{k} and the value is #{v}"
end

