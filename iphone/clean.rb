$stdin.each_line do |line|
  puts line.gsub(/: .+;/, ": (id)args;")
end