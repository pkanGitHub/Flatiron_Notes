class User
    # has a first name
    # has a last name
    attr_accessor :first_name, :last_name
end

class Student < User
    # inherits from the User class
    attr_accessor :knowledge
  
    def initialize
        @knowledge = [] # initializes with an empty knowledge array
    end
  
    def learn(knowledge)
        # takes in an argument of a string of knowledge and adds it 
        # to the student's knowledge array
        @knowledge << knowledge
    end
  
    def knowledge
        # returns that student's knowledge array
        @knowledge
    end  
end

class Teacher < User
    # inherits from the User class
    KNOWLEDGE = ["a String is a type of data in Ruby", "programming is hard, but it's worth it", "javascript async web request", "Ruby method call definition", "object oriented dog cat class instance", "class method class variable instance method instance variable", "programming computers hacking learning terminal", "bash Ruby rvm update certs"]
  
    def teach
        # returns a random string of knowledge
        KNOWLEDGE.sample
    end
end
  