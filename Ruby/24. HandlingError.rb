
lucky_num = [4, 5, 6, 7, 8, 9]


begin
    lucky_num["dog"]
    #num = 10 / 0
rescue ZeroDivisionError
    puts "Division by zero error"
rescue TypeError #=> e
    puts "Wrong Type"
    #puts e
end
