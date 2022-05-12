def dash
    puts "============================"
    puts "                            "
end

numbers = [1, 2, 3, 4, 5]

squares =  numbers.map { |number| number ** 2}
p squares
dash
# map and collect are the same thing



# squares = []
# numbers.each { |number| squares << number ** 2}
# p squares

fahr_temperatures = [105, 73, 40, 18, -2]

celcius_temperature = fahr_temperatures.collect do |temp|
    minus32 = temp - 32
    minus32 * (5.0/9.0)
end

p celcius_temperature
dash

numbers = [3, 8, 11, 15, 89]

# Write a cubes method that accepts an array
# and returns a new array. The new array will 
# have all the values from the original one cubed.

def cubes(array)
    #Return array
end

p cubrs(numbers)
