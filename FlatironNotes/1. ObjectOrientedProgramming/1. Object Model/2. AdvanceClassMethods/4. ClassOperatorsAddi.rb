# Additionally, class methods might provide a global operation on data. Imagine that one of the 
# csvs we were provided with has perople's names in lowercase letters. We want proper capitalization. 
# We can build a class method Person.normalize_names

class Person 
    attr_accessor :name 
    @@all = []
    def self.all 
        @@all
    end

    def initialize(name)
        @name = name 
        @@all << self 
    end

    # NORMALIZING NAME
    # def normalize_name 
    #     self.name.split(" ").collect{|w| w.capitalize}.join(" ")
    #     # the logic for notmalizing a person's name is pretty complex.
    # end

    # def self.normalize_names
    #     self.all.each do |person|
    #         person.name = person.normalize_name
    #     end
    # end

    def self.destroy_all
        self.all.clear
        # Another example of this type of global data manipulation might be deleting all 
        # the people. We would build a Person.destroy_all class method that will clear
        # out all the  @@all array. 
    end
end