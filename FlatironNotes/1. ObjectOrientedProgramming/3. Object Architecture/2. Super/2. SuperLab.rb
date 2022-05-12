class Student
    def hello
        #  returns a greeting phrase
        puts "Hey there! I'm so excited to learn stuff."
    end
  
    def raise_hand
        # returns the phrase 'Pick me!'
        puts "Pick me!"
    end
end


class ChattyStudent < Student
    def hello
        super
        # returns a greeting phrase plus a long chatty phrase
        puts "How are you doing today? I'm okay, but I'm kind of tired. Did you watch The Walking Dead last night? You didn't?! Oh man, it was so crazy! What, you don't want any spoilers? Okay well let me just tell you who died..."
    end
  
    def raise_hand
        # returns the phrase 'Pick me!' ten times.
        10.times do
            super
        end
    end
end