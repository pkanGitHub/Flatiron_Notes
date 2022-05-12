# instance variable用@
# class variable用@@

class Dog 
    @@all = []
end

class Baby 
    @@all = []
    attr_accessor :name, :weight, :eye_color 
    attr_reader :birthday

    def initialize # Hook / Callback/ Life Cycle Event - because it is a method automatically
        cry
        @birthday = Time.now
        @@all << self #THIS CURRENT BABY, How does an object refer to itself?
    end

    def self.all # Class Method (Class Reader)
        @@all 
    end

    def cry # Instance Method - represents an objects ability to have logic
        puts "Waaaaaaaaa"
    end

    def name=(the_baby_name) # Writer
        @my_name = the_baby_name # Casting the local variable to an instance variable / hoisting
    end

    def name # Reader
        @my_name 
    end
end

Baby # The class itself
Baby.new # Instances of the class

