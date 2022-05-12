class Person 
    attr_accessor :name, :age, :company

    def self.new_from_csv(csv_data)
         # Split the CSV data into an array of individual rows. 
        rows = csv_data.split("\n") 
        # For each row, let's collect a Person instance based on the data
        people = rows.collect do |row|
            # Split the rows into 3 parts, name, age, company, at the ", "
            data = row.split(", ")
            name = data[0]
            age = data[1]
            company = data[2]

            # Make a new instance
            person = self.new # self refers to the Person class. This is Person.new 
            # Set the properties on the person. 
            person.name = name
            person.age = age
            person.company = company
            # Return the person to collect
            person 
        end
        # Return the array of newly created people. 
        people 
    end
end

csv_data = "Elon Musk, 45, Tesla
Mark Zuckerberg, 32, Facebook
Martha Stewart, 74, MSL"

people = Person.new_from_csv(csv_data)
p people 
# => [#<Person:0x00007fca570d4980 @name="Elon Musk", @age="45", @company="Tesla">, 
#<Person:0x00007fca570d4890 @name="Mark Zuckerberg", @age="32", @company="Facebook">, 
#<Person:0x00007fca570d47a0 @name="Martha Stewart", @age="74", @company="MSL">]

new_csv_data = "Avi Flombaum, 31, Flatiron School
Payal Kadakia, 30, ClassPass"

people << Person.new_from_csv(new_csv_data)
people.flatten
p people 
# => [#<Person:0x00007f81f8168650 @name="Elon Musk", @age="45", @company="Tesla">, 
#<Person:0x00007f81f8168560 @name="Mark Zuckerberg", @age="32", @company="Facebook">, 
#<Person:0x00007f81f8168470 @name="Martha Stewart", @age="74", @company="MSL">, 
#<Person:0x00007f81f8173ed8 @name="Avi Flombaum", @age="31", @company="Flatiron School">, 
#<Person:0x00007f81f8173de8 @name="Payal Kadakia", @age="30", @company="ClassPass">]



#*******************************************#
# COMPLEX WAY
# csv_data = "Elon Musk, 45, Tesla
# Mark Zuckerberg, 32, Facebook
# Martha Stewart, 74, MSL"

# rows = csv_data.split("\n")

# people = rows.collect do |row|
#     data = row.split(", ")
#     name = data[0]
#     age = data[1]
#     company = data[2]
#     person = Person.new
#     person.name = name 
#     person.age = age 
#     person.company = company
#     person 
# end

# p people 

# => 
#[#<Person:0x00007ff2f8035230 @name="Elon Musk", @age="45", @company="Tesla">, 
#<Person:0x00007ff2f8035140 @name="Mark Zuckerberg", @age="32", @company="Facebook">, 
#<Person:0x00007ff2f8035050 @name="Martha Stewart", @age="74", @company="MSL">]
