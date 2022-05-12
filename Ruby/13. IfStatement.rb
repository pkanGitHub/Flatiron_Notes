
ismale = false #false
istall = true

if ismale && istall 
    puts "You are a tall man"
elsif ismale && !istall
    puts "You are a short male"
elsif !ismale && istall
    puts "You are not male but are tall"
else
    puts "You are not male and not tall"
end