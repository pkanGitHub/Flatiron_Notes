
puts "Enter a number: "
num1 = gets.chomp() #if(float) or gets.chomp.to_f
puts "Enter another number: "
num2 = gets.chomp()

puts (num1 + num2) # auto converted into string
puts (num1.to_i + num2.to_i) # if (float) only needs to convert on the top

# if there is a float in the input, it will print out integer
# so instead of to_i , we can give to_f
