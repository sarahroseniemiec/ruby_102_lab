# Review the Lesson Objectives from the Ruby 102 lesson.
#
# 1- Explain the relationship between .new and def initialize.
# .new creates a new instantiation of a class object. The initialize method runs every time you create (instantiate) a new instance of an object using '.new'.

# 2- What is the difference between instance and class methods? Give an example from the lesson.
# An instance method belongs to the instance of an object and not the entire class. For example the turn_on_engine method from the lesson. Which would be called on the instance of the Car like volvo.turn_on_engine
# A class method is a method that is called on the class. For example the traffic_jam method from the lesson

# 3- Given this class, rewrite the getter & setter methods the shorter way (attr_):

class Robot
  attr_reader :name, :model_num
  attr_writer :name

  def initialize(name, model_num)
    @name = name
    @model_num = model_num
  end

end
# 4- Create a Vehicle class

class Vehicle

  attr_accessor :type, :color, :fuel_level
  def initialize(type, color, fuel_level=0)
    @type = type
    @color = color
    @fuel_level = fuel_level
    puts "The type of the vehicle is #{@type}, the color of the vehicle is #{@color} and the fuel level is at #{@fuel_level}."
  end

  def accelerate(speed)
    @fuel_level += 1
  end

  def decelerate(speed)
    @fuel_level -= 1
  end

  def honk
    puts "beep beep"
  end

  def something_broke(car_part)
    @car_part = car_part
    puts "The #{@car_part} is broken."
  end

  def car_shop(car_part)
    @car_part = car_part
    puts "The #{@car_part} is being fixed"
  end

end

truck = Vehicle.new("ford", "sky blue", 10)
#
# Initialize method:
# Enable the class to be initialized with a type, a color & fuel_level (which has a default of 0).
# You don't have to use the options hash. We can assume you will type the arguments in properly.
# Some options for types could be: truck, car, motorcycle, etc.
# When initialized, the instance "speaks" its type, color & fuel_level. This can be one method or three.
# Make it so that you can get and set all 3 of the above variables.
# Create the following methods:
# These two methods take a parameter speed:
# accelerate - increments fuel_level
# decelerate - decrements fuel_level
# honk - Makes the car beep.
# Each take a car part as a parameter:
# something_broke: when called, says which car part is broken
# car_shop: when called, says what car part is being fixed.
# The end.
