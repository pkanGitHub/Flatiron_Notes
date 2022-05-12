# if not in the same file
# ("/files/emplyees.txt")
# must include a path

File.open("employees.txt", "r") do |file| #storing employees file into |file|

=begin
    file = File.open("employees.txt", "r") 
        # (another way to read the file, but make sure to close it)
    file.close()
=end

# uncomment the first # to see the result
    # puts file.read() #will read the whole thing
    # puts file.readline() #will read the first line 
    # puts file.readchar() #will only read the character one by one

    for line in file.readlines()
        puts line 
    end
       
end 

