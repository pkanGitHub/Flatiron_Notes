class Dog 
    attr_accessor :name # has a name

    @@all = []  # has a class variable, @@all, the points to an array

    def initialize(name) 
        @name = name
        save  #adds this dog instance to the @@all array when called
    end

    def self.all # is a class method returns all dog instances
        @@all
    end

    def self.clear_all # is a class method that empties the @@all array of all existing dogs
        @@all.clear
    end

    def self.print_all # is a class method that puts out the name of each dog to the terminal
        puts @@all.map {|dog| dog.name} 
    end

    def save 
        @@all << self # gets called inside initialize when a new Dog is created
    end
end 