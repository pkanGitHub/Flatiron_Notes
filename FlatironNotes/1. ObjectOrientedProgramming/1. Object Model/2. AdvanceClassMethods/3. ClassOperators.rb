class Person 
    attr_accessor :name 
    @@all = []
    def self.all 
        @@all
    end

    def self.create(name)
        person = self.new 
        person.name = name 
        @@all << person 
    end

    def self.print_all
        self.all.each{|person| puts "#{person.name}"}
    end
end

Person.create("Ada Lovelace")
Person.create("Grace Hopper")

# Printing each person
Person.print_all
#=> Ada Lovelace
#=> Grace Hopper