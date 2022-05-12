def say_hello(name, age)
    # if dunno what arg to put, we can set the default value
    puts ("Hello " + name + " you are " + age.to_s)
end

puts "Top"
say_hello("Mike", 9)
puts "Bottom"