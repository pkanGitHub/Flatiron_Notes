class Cat   
    attr_accessor :mood, :owner
    attr_reader :name
  
    @@all = []
  
    def initialize(name, owner)
      @name = name
      @mood = "nervous"
      @owner = owner
      @@all << self
    end
  
    def self.all # knows all the cats
      @@all
    end
end

class Dog
    attr_accessor :mood, :owner
    attr_reader :name
  
    @@all = []
  
    def initialize(name, owner)
      @name = name
      @mood = "nervous"
      @owner = owner
      @@all << self
    end
  
    def self.all # knows all the dogs
      @@all
    end
end

class Owner
    # cannot change owner's name
    # can't change its species
    attr_reader :name, :species
  
    @@all = []
  
    def initialize(name)
        @name = name # can have a name
        @species = "human" # initializes with species set to human
        @@all << self
    end
  
    def say_species
        return "I am a #{self.species}." # can say its species
    end
  
    def self.all # .all returns all instances of Owner that have been created
        @@all
    end
  
    def self.count # .count returns the number of owners that have been created
        @@all.count
    end
  
    def self.reset_all # .reset_all can reset the owners that have been created
        @@all.clear
    end
  
    def cats
        # returnsa a collection of all the cats that belong to the owner
        Cat.all.select {|cat| cat.owner == self}
    end
  
    def dogs
        # returnsa a collection of all the dogs that belong to the owner
        Dog.all.select {|dog| dog.owner == self}
    end
  
    def buy_cat(name)
        # can buy a cat that is an instance of the Cat class knows about its cats
        Cat.new(name, self)
    end
  
    def buy_dog(name)
        # can buy a dog that is an instance of the Dog class knows about its dogs
        Dog.new(name, self)
    end
  
    def walk_dogs
        # walks the dogs which makes the dogs' moods happy
        self.dogs.each {|dog| dog.mood = "happy"}
    end
  
    def feed_cats
        # feeds cats which makes the cats' moods happy
        self.cats.each {|cat| cat.mood = "happy"}
    end
  
    def sell_pets
        pets = self.dogs + self.cats # all dogs + all cats
  
        pets.each do |pet| ## put in array, and make changes to all
            pet.mood = "nervous" # can sell all its pets, which makes them nervous
            pet.owner = nil # can sell all its pets, which leaves them without an owner
      end
    end
  
    def list_pets
        # can list off its pets
      return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end
end
  