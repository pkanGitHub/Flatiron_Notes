
friends = ["Iris", "Stu", "Jack", "Alma", "Judy", "Joe", "Rachel"]

for element in friends # will print out the friend list  
    puts element 
end

friends.each do |friend| # will print out the friend list
    puts friend
end

for index in 0..5 # will print out 0 - 5
    puts index 
end

6.times do |index| # will print out 0 - 5
    puts  index
end