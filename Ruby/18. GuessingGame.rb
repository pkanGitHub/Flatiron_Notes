
secret_word = "GEM"
guess = ""
guess_count = 0 # how many times user have guess
guess_limit = 3 # maximum 3 guesses
out_of_guesses = false #when it is not out of guess

while guess != secret_word && !out_of_guesses 
    if guess_count < guess_limit # when guess times less than 3... loop
        puts "Enter guess: "
        guess = gets.chomp()
        guess_count += 1 # and guess times plus 1
    else
        out_of_guesses = true # when it is out of guess
    end
end 

if out_of_guesses # when user used up guesses   
    puts "You Lost!"
else # otherwise
    puts "You Won!"
end

