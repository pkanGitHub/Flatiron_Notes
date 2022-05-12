def dash
    puts "----------------------------"
end

names = ["Ho", "Loe", "Roe"]

names.each { |name| puts name.upcase}

dash
dash

[1, 2, 3, 4, 5].each do |num|
    square = num * num 
    puts "The square of #{num} is #{square}!"
end

dash
dash

fives = [5, 10, 15, 20, 25, 30, 35, 40]
evens = []
odds = []

fives.each do |number|
    puts number if number.odd?
end
dash
fives.each do |number|
=begin 
    if number.even?
        evens << number
    else 
        odds << number
    end
=end
    number.even? ? evens << number : odds << number
end
p evens
p odds

dash

def print_evens_and_odds(array)
    evens = []
    odds = []

    array.each { |number| number.even? ? evens << number : odds << number }
    p evens
    p odds
end

print_evens_and_odds(fives) 
dash
print_evens_and_odds([5, 8, 9, 10, 23, 454, 62])




