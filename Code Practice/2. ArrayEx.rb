
# This file is for excersicing the arrays

array_test = ["First", "Second", "Third", "Last"]
 # (below this can be anything, doesn't just have to be the word object)
for object in array_test
    puts object
end

for lol in array_test.reverse
    puts lol
end

favorite_candy = ["Sour Patch", "Lint", "Gummy Warm", "Rum Chocolate"]

counter = 1

favorite_candy.each do |anything|

    puts " #{counter}: #{anything}"
    counter += 1
end

# OR

favorite_candy.each_with_index do |anything, index|
    puts "#{index}. #{anything}"
end

