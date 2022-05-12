def dash
    puts "============================"
    puts "                            "
end

colors = ["Red", "Orange", "Green", "Blue"]

colors.each_with_index do |color, index|
    puts "Moving on to index number #{index}"
    puts "The current color is #{color}"
end
dash

# write a loop that iterates over a numeric array
# output the PRODUCT of each number and its index position

fives = [5, 10, 15, 20, 25]

fives.each_with_index do |number, i|
    puts "The current value is #{number} at index #{i}!"
    puts number * i
end
dash

=begin
 CHALLENGE
 
 [1, 2, 3, 4, 5]
 Write a loops that gives a sum of the products of each index and its value

=end

sum = 0 

[1, 2, 3, 4, 5].each_with_index do |number, i|
    result = number * i
    sum += result
end

p sum
dash

=begin
 CHALLENGE
 
 [-1, 2, 1, 2, 5, 7, 3]

 Prints the product of the element and its index position if the index position is greater than the element
 Create this within a method

=end

arr = [-1, 2, 1, 2, 5, 7, 3]

def print_if(array)
    array.each_with_index do |number, index|
        if index > number
            puts "We have a match. The index is #{index} and the number is #{number}!"
            puts "The result of multiplying them is #{index * number}!"
        end
    end
end

print_if(arr)

