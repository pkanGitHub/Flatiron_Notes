def dash
    puts "======================="
end

toppings = ["pickles", "mushrooms", "bacon"]

# Each

def hamburger(toppings)
    my_statements = []
    toppings.each do |topping|
        my_statements << "I love #{topping} on my burgers!"
    end
    my_statements
end

p hamburger(toppings)
dash

#Map & Collect
 
def hamburger(toppings)
  toppings.map do |topping|
    puts "I love #{topping} on my burgers!"
  end
end

hamburger(toppings)

# or
dash

def hamburger(toppings)
    toppings.collect do |topping|
      "I love #{topping} on my burgers"
    end
  end

p hamburger(toppings)
