# In Ruby, classes can inherit from one another. This means that they adopt all 
# of the attributes and behaviors(i.e. all of the methods) of the parent, also called 
# the 'super' class


# In this exercise, Vehicle will act as the parent, or super, class. 
# And Car as a subclasses(child)

class Vehicle
    attr_accessor :wheel_size, :wheel_number
  
    def initialize(wheel_size, wheel_number)
        # initializes with two arguments, wheel size and number
        @wheel_size = wheel_size # has a wheel_size
        @wheel_number = wheel_number # has a wheel_number
    end
  
    def go
        # returns 'vrrrrrrrooom!'
        "vrrrrrrrooom!"
    end
  
    def fill_up_tank
        # returns 'filling up!'
        "filling up!"
    end
end

class Car < Vehicle # use < to inherit the car class from Vehicle

  def go
        # returns 'VRRROOOOOOOOOOOOOOOOOOOOOOOM!!!!!'
        "VRRROOOOOOOOOOOOOOOOOOOOOOOM!!!!!"
  end
end