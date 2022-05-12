
students = ["Harry Potter", "Ron Weasley", "Hermione Granger", "Draco Malfoy"]

def turn_intp_frog(student)
    puts "Poof! #{student} is a frog."
end

turn_intp_frog(students[0])
turn_intp_frog(students[1])
turn_intp_frog(students[2])

# OR

students.each do |student|
    turn_intp_frog(student)
end

# ---------------------------------
# .each

cool_nums = [1, 2, 3]

def change_nums(nums)
    nums.each do |x|
        puts x + 1
    end
end

change_nums(cool_nums)

# ---------------------------------
# .collect & .map

cool_nums = [1, 2, 3]

def change_nums(nums)
    nums.collect do |x|
        puts x + 1
    end
end

change_nums(cool_nums)

# If you need the return value of your method to be a collection that's 
# been modified by what's happening within the block, then .collect is for you. 

cool_nums = [1, 2, 3]
 
def change_nums(nums)
  new_count = []
  nums.each do |x|
    x += 1
    new_count << x
  end
  new_count
end
 
change_nums(cool_nums)
#=> [2, 3, 4]

# ---------------------------------
# The .select method returns a new collection containing all 
# of the elements in the submitted collection for which the block's conditional is true:

cool_nums = [1, 2, 3, 4, 5]
 
def even_nums(nums)
  nums.select do |x|
    x.even?
  end
end
 
even_nums(cool_nums)
#=> [2, 4]

# ---------------------------------
# The .find method is very similar to .select, but instead of collecting and returning 
# all of the items for which a condition is true, .find returns only the first item for 
# which it is true

[1, 3, 5, 7].find do |num|
    num.odd?
end
    # => 1

# ---------------------------------
# The .delete_if method, on the other hand, will delete from the collection any items 
# that return true for a certain condition:

[1, 2, 4, 7].delete_if do |num|
    num.odd?
end
    # =>[2,4]

# ---------------------------------
# You can use the .include? method to determine if a collection contains a specific element.

[1, 2, 3].include?(1)
#   => true
 
[1, 2, 3].include?(4)
#   => false

# ---------------------------------
# Calling .any? on a collection will return true if the code in the block (code between the 
# do...end keywords or between the { } "curly braces") evaluates to true for any element in 
# the collection. Let's take a look:

words = ["are", "any", "of", "these", "words", "longer", "than", "four", "letters"]
 
words.any? do |word|
  word.length > 4
end
  #=> true

# ---------------------------------
