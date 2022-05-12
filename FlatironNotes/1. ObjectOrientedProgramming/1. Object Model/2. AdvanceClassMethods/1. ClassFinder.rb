# Build class finders
# Build class constructors
# Build class operators


class Person 
    attr_accessor :name 
    @@people =[] # changed from @@all

    def initialize(name)
        @name = name 
        # self in the initialize method is our new instance
        # self.class is Person
        # self.class.all == Person.all
        self.class.all << self
        # <@@people << self # changed from @@all>
    end

    def self.all 
        @@people # changed from @all
    end

    def self.find_by_name(name)
        @@people.find{|person| person.name == name}
        # changed from @@all
    end

    # def inspect
    #     "#<Person @name=\"#{name}\">"
    # end
end

Person.new("Grace Hopper")
Person.new("Sandi Metz")


sandi_metz = Person.find_by_name("Sandi Metz")
p sandi_metz
grace_hopper = Person.find_by_name("Grace Hopper")
p grace_hopper
avi_flombaum = Person.find_by_name("Avi Flombaum")
p avi_flombaum